.class public Loj/w;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loj/w$b;,
        Loj/w$c;,
        Loj/w$d;
    }
.end annotation


# instance fields
.field a:Lorg/bouncycastle/asn1/k;

.field b:Loj/a;

.field c:Lmj/c;

.field d:Loj/y;

.field e:Loj/y;

.field f:Lorg/bouncycastle/asn1/s;

.field g:Loj/m;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/k;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Loj/w;->a:Lorg/bouncycastle/asn1/k;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Loj/w;->a:Lorg/bouncycastle/asn1/k;

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v0

    iput-object v0, p0, Loj/w;->b:Loj/a;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v1

    iput-object v1, p0, Loj/w;->c:Lmj/c;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/y;->y(Ljava/lang/Object;)Loj/y;

    move-result-object v0

    iput-object v0, p0, Loj/w;->d:Loj/y;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/z;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/i;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Loj/y;

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Loj/y;->y(Ljava/lang/Object;)Loj/y;

    move-result-object v1

    iput-object v1, p0, Loj/w;->e:Loj/y;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/y;

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v1

    iput-object v1, p0, Loj/w;->f:Lorg/bouncycastle/asn1/s;

    move v1, v0

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/y;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/y;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    invoke-static {p1}, Loj/m;->F(Ljava/lang/Object;)Loj/m;

    move-result-object p1

    iput-object p1, p0, Loj/w;->g:Loj/m;

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

.method public static y(Ljava/lang/Object;)Loj/w;
    .locals 1

    instance-of v0, p0, Loj/w;

    if-eqz v0, :cond_0

    check-cast p0, Loj/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/w;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/w;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/w;->e:Loj/y;

    return-object v0
.end method

.method public F()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Loj/w;->f:Lorg/bouncycastle/asn1/s;

    if-nez v0, :cond_0

    new-instance v0, Loj/w$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loj/w$c;-><init>(Loj/w;Loj/w$a;)V

    return-object v0

    :cond_0
    new-instance v1, Loj/w$d;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Loj/w$d;-><init>(Loj/w;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public G()[Loj/w$b;
    .locals 4

    iget-object v0, p0, Loj/w;->f:Lorg/bouncycastle/asn1/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Loj/w$b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    new-array v2, v0, [Loj/w$b;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Loj/w;->f:Lorg/bouncycastle/asn1/s;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Loj/w$b;->y(Ljava/lang/Object;)Loj/w$b;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public H()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/w;->b:Loj/a;

    return-object v0
.end method

.method public I()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/w;->d:Loj/y;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/w;->a:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Loj/w;->b:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/w;->c:Lmj/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/w;->d:Loj/y;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/w;->e:Loj/y;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Loj/w;->f:Lorg/bouncycastle/asn1/s;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    iget-object v1, p0, Loj/w;->g:Loj/m;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/bouncycastle/asn1/d1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/m;
    .locals 1

    iget-object v0, p0, Loj/w;->g:Loj/m;

    return-object v0
.end method

.method public z()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/w;->c:Lmj/c;

    return-object v0
.end method
