.class public Loj/p;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Loj/q;

.field b:Loj/o;

.field c:Loj/t;

.field private d:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Loj/p;->d:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v3, v1}, Loj/t;->y(Lorg/bouncycastle/asn1/y;Z)Loj/t;

    move-result-object v3

    iput-object v3, p0, Loj/p;->c:Loj/t;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3, v1}, Loj/o;->y(Lorg/bouncycastle/asn1/y;Z)Loj/o;

    move-result-object v3

    iput-object v3, p0, Loj/p;->b:Loj/o;

    goto :goto_1

    :cond_2
    invoke-static {v3, v1}, Loj/q;->y(Lorg/bouncycastle/asn1/y;Z)Loj/q;

    move-result-object v3

    iput-object v3, p0, Loj/p;->a:Loj/q;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Loj/p;->d:I

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

.method private constructor <init>(Lorg/bouncycastle/asn1/y;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Loj/p;->d:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    invoke-static {p1, v0}, Loj/o;->y(Lorg/bouncycastle/asn1/y;Z)Loj/o;

    move-result-object p1

    iput-object p1, p0, Loj/p;->b:Loj/o;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Holder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Loj/q;->y(Lorg/bouncycastle/asn1/y;Z)Loj/q;

    move-result-object p1

    iput-object p1, p0, Loj/p;->a:Loj/q;

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Loj/p;->d:I

    return-void
.end method

.method public static x(Ljava/lang/Object;)Loj/p;
    .locals 1

    instance-of v0, p0, Loj/p;

    if-eqz v0, :cond_0

    check-cast p0, Loj/p;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/y;

    if-eqz v0, :cond_1

    new-instance v0, Loj/p;

    invoke-static {p0}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/p;-><init>(Lorg/bouncycastle/asn1/y;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Loj/p;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/p;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    iget v0, p0, Loj/p;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v3, p0, Loj/p;->a:Loj/q;

    if-eqz v3, :cond_0

    new-instance v4, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v4, v1, v1, v3}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v3, p0, Loj/p;->b:Loj/o;

    if-eqz v3, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v4, v1, v2, v3}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v2, p0, Loj/p;->c:Loj/t;

    if-eqz v2, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v2}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Loj/p;->b:Loj/o;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v1, v2, v2, v0}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    return-object v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/d1;

    iget-object v3, p0, Loj/p;->a:Loj/q;

    invoke-direct {v0, v2, v1, v3}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    return-object v0
.end method
