.class public Loj/f;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Lorg/bouncycastle/asn1/k;

.field private b:Loj/p;

.field private c:Loj/b;

.field private d:Loj/a;

.field private e:Lorg/bouncycastle/asn1/k;

.field private f:Loj/c;

.field private g:Lorg/bouncycastle/asn1/s;

.field private h:Lorg/bouncycastle/asn1/n0;

.field private i:Loj/m;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/k;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Loj/f;->a:Lorg/bouncycastle/asn1/k;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/k;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    iput-object v2, p0, Loj/f;->a:Lorg/bouncycastle/asn1/k;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Loj/p;->x(Ljava/lang/Object;)Loj/p;

    move-result-object v2

    iput-object v2, p0, Loj/f;->b:Loj/p;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Loj/b;->x(Ljava/lang/Object;)Loj/b;

    move-result-object v2

    iput-object v2, p0, Loj/f;->c:Loj/b;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v2

    iput-object v2, p0, Loj/f;->d:Loj/a;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v2

    iput-object v2, p0, Loj/f;->e:Lorg/bouncycastle/asn1/k;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Loj/c;->x(Ljava/lang/Object;)Loj/c;

    move-result-object v2

    iput-object v2, p0, Loj/f;->f:Loj/c;

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v2

    iput-object v2, p0, Loj/f;->g:Lorg/bouncycastle/asn1/s;

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/n0;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object v1

    iput-object v1, p0, Loj/f;->h:Lorg/bouncycastle/asn1/n0;

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/s;

    if-nez v2, :cond_2

    instance-of v1, v1, Loj/m;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Loj/m;->F(Ljava/lang/Object;)Loj/m;

    move-result-object v1

    iput-object v1, p0, Loj/f;->i:Loj/m;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
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

.method public static F(Ljava/lang/Object;)Loj/f;
    .locals 1

    instance-of v0, p0, Loj/f;

    if-eqz v0, :cond_0

    check-cast p0, Loj/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/f;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/f;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Loj/p;
    .locals 1

    iget-object v0, p0, Loj/f;->b:Loj/p;

    return-object v0
.end method

.method public G()Loj/b;
    .locals 1

    iget-object v0, p0, Loj/f;->c:Loj/b;

    return-object v0
.end method

.method public H()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/f;->h:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public I()Lorg/bouncycastle/asn1/k;
    .locals 1

    iget-object v0, p0, Loj/f;->e:Lorg/bouncycastle/asn1/k;

    return-object v0
.end method

.method public J()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/f;->d:Loj/a;

    return-object v0
.end method

.method public K()Lorg/bouncycastle/asn1/k;
    .locals 1

    iget-object v0, p0, Loj/f;->a:Lorg/bouncycastle/asn1/k;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/f;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Loj/f;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Loj/f;->b:Loj/p;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->c:Loj/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->d:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->e:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->f:Loj/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->g:Lorg/bouncycastle/asn1/s;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/f;->h:Lorg/bouncycastle/asn1/n0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Loj/f;->i:Loj/m;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/c;
    .locals 1

    iget-object v0, p0, Loj/f;->f:Loj/c;

    return-object v0
.end method

.method public y()Lorg/bouncycastle/asn1/s;
    .locals 1

    iget-object v0, p0, Loj/f;->g:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public z()Loj/m;
    .locals 1

    iget-object v0, p0, Loj/f;->i:Loj/m;

    return-object v0
.end method
