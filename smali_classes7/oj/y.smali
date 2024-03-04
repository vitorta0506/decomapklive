.class public Loj/y;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# instance fields
.field a:Lorg/bouncycastle/asn1/r;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/r;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/z;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/asn1/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Loj/y;->a:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Loj/y;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loj/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/z;

    if-eqz v0, :cond_1

    new-instance v0, Loj/y;

    check-cast p0, Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, p0}, Loj/y;-><init>(Lorg/bouncycastle/asn1/r;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/i;

    if-eqz v0, :cond_2

    new-instance v0, Loj/y;

    check-cast p0, Lorg/bouncycastle/asn1/i;

    invoke-direct {v0, p0}, Loj/y;-><init>(Lorg/bouncycastle/asn1/r;)V

    return-object v0

    :cond_2
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

    :cond_3
    :goto_0
    check-cast p0, Loj/y;

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Loj/y;->a:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loj/y;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Date;
    .locals 4

    :try_start_0
    iget-object v0, p0, Loj/y;->a:Lorg/bouncycastle/asn1/r;

    instance-of v1, v0, Lorg/bouncycastle/asn1/z;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/z;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->K()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/i;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/i;->N()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Loj/y;->a:Lorg/bouncycastle/asn1/r;

    instance-of v1, v0, Lorg/bouncycastle/asn1/z;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/z;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/i;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/i;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
