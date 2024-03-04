.class public Lqj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final a:Lorg/bouncycastle/asn1/e;


# direct methods
.method public constructor <init>(Loj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Loj/b;->y()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lqj/a;->a:Lorg/bouncycastle/asn1/e;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lqj/a;

    iget-object v1, p0, Lqj/a;->a:Lorg/bouncycastle/asn1/e;

    invoke-static {v1}, Loj/b;->x(Ljava/lang/Object;)Loj/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lqj/a;-><init>(Loj/b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lqj/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lqj/a;

    iget-object v0, p0, Lqj/a;->a:Lorg/bouncycastle/asn1/e;

    iget-object p1, p1, Lqj/a;->a:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqj/a;->a:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
