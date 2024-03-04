.class public Loj/b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# instance fields
.field a:Lorg/bouncycastle/asn1/e;

.field b:Lorg/bouncycastle/asn1/r;


# direct methods
.method public constructor <init>(Loj/o;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Loj/b;->a:Lorg/bouncycastle/asn1/e;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    iput-object p1, p0, Loj/b;->b:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public constructor <init>(Loj/z;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Loj/b;->a:Lorg/bouncycastle/asn1/e;

    new-instance v0, Lorg/bouncycastle/asn1/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    iput-object v0, p0, Loj/b;->b:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public static x(Ljava/lang/Object;)Loj/b;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Loj/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loj/z;

    if-eqz v0, :cond_1

    new-instance v0, Loj/b;

    invoke-static {p0}, Loj/z;->x(Ljava/lang/Object;)Loj/z;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/b;-><init>(Loj/z;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loj/o;

    if-eqz v0, :cond_2

    new-instance v0, Loj/b;

    check-cast p0, Loj/o;

    invoke-direct {v0, p0}, Loj/b;-><init>(Loj/o;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/y;

    if-eqz v0, :cond_3

    new-instance v0, Loj/b;

    check-cast p0, Lorg/bouncycastle/asn1/y;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Loj/z;->y(Lorg/bouncycastle/asn1/y;Z)Loj/z;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/b;-><init>(Loj/z;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/s;

    if-eqz v0, :cond_4

    new-instance v0, Loj/b;

    invoke-static {p0}, Loj/o;->x(Ljava/lang/Object;)Loj/o;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/b;-><init>(Loj/o;)V

    return-object v0

    :cond_4
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

    :cond_5
    :goto_0
    check-cast p0, Loj/b;

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Loj/b;->b:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public y()Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Loj/b;->a:Lorg/bouncycastle/asn1/e;

    return-object v0
.end method
