.class public Lorg/bouncycastle/cert/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final a:Loj/p;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Loj/p;->x(Ljava/lang/Object;)Loj/p;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/a;->a:Loj/p;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/a;

    iget-object v1, p0, Lorg/bouncycastle/cert/a;->a:Loj/p;

    invoke-virtual {v1}, Loj/p;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/s;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/a;

    iget-object v0, p0, Lorg/bouncycastle/cert/a;->a:Loj/p;

    iget-object p1, p1, Lorg/bouncycastle/cert/a;->a:Loj/p;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/a;->a:Loj/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->hashCode()I

    move-result v0

    return v0
.end method
