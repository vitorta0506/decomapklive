.class public Loj/k;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# instance fields
.field a:Lorg/bouncycastle/asn1/e;

.field b:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/y;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v0

    iput v0, p0, Loj/k;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Loj/o;->y(Lorg/bouncycastle/asn1/y;Z)Loj/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/u;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/u;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Loj/k;->a:Lorg/bouncycastle/asn1/e;

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

.method public static y(Ljava/lang/Object;)Loj/k;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Loj/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/y;

    if-eqz v0, :cond_1

    new-instance v0, Loj/k;

    check-cast p0, Lorg/bouncycastle/asn1/y;

    invoke-direct {v0, p0}, Loj/k;-><init>(Lorg/bouncycastle/asn1/y;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Loj/k;

    return-object p0
.end method

.method public static z(Lorg/bouncycastle/asn1/y;Z)Loj/k;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/y;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/y;

    move-result-object p0

    invoke-static {p0}, Loj/k;->y(Ljava/lang/Object;)Loj/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/d1;

    iget v1, p0, Loj/k;->b:I

    iget-object v2, p0, Loj/k;->a:Lorg/bouncycastle/asn1/e;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPointName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Loj/k;->b:I

    if-nez v2, :cond_0

    iget-object v2, p0, Loj/k;->a:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullName"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Loj/k;->a:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nameRelativeToCRLIssuer"

    :goto_0
    invoke-direct {p0, v1, v0, v3, v2}, Loj/k;->x(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
