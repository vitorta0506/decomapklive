.class public Loj/r;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Loj/k;

.field private b:Z

.field private c:Z

.field private d:Loj/u;

.field private e:Z

.field private f:Z

.field private g:Lorg/bouncycastle/asn1/s;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Loj/r;->g:Lorg/bouncycastle/asn1/s;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/c;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v2

    iput-boolean v2, p0, Loj/r;->f:Z

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/c;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v2

    iput-boolean v2, p0, Loj/r;->e:Z

    goto :goto_1

    :cond_2
    new-instance v3, Loj/u;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n0;->Q(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/n0;

    move-result-object v2

    invoke-direct {v3, v2}, Loj/u;-><init>(Lorg/bouncycastle/asn1/n0;)V

    iput-object v3, p0, Loj/r;->d:Loj/u;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/c;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v2

    iput-boolean v2, p0, Loj/r;->c:Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/c;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v2

    iput-boolean v2, p0, Loj/r;->b:Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Loj/k;->z(Lorg/bouncycastle/asn1/y;Z)Loj/k;

    move-result-object v2

    iput-object v2, p0, Loj/r;->a:Loj/k;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private y(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method

.method public static z(Ljava/lang/Object;)Loj/r;
    .locals 1

    instance-of v0, p0, Loj/r;

    if-eqz v0, :cond_0

    check-cast p0, Loj/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/r;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/r;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Loj/r;->e:Z

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Loj/r;->g:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Loj/r;->a:Loj/k;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Loj/k;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Loj/r;->b:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Loj/r;->y(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Loj/r;->c:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Loj/r;->y(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Loj/r;->d:Loj/u;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/b;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Loj/r;->f:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Loj/r;->y(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Loj/r;->e:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Loj/r;->y(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Loj/r;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
