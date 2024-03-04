.class public Loj/v;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Loj/a;

.field private b:Lorg/bouncycastle/asn1/n0;


# direct methods
.method public constructor <init>(Loj/a;Lorg/bouncycastle/asn1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n0;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/n0;-><init>(Lorg/bouncycastle/asn1/e;)V

    iput-object v0, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    iput-object p1, p0, Loj/v;->a:Loj/a;

    return-void
.end method

.method public constructor <init>(Loj/a;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n0;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/n0;-><init>([B)V

    iput-object v0, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    iput-object p1, p0, Loj/v;->a:Loj/a;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v0

    iput-object v0, p0, Loj/v;->a:Loj/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    return-void

    :cond_0
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

.method public static z(Ljava/lang/Object;)Loj/v;
    .locals 1

    instance-of v0, p0, Loj/v;

    if-eqz v0, :cond_0

    check-cast p0, Loj/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/v;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/v;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public F()Lorg/bouncycastle/asn1/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/v;->a:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/v;->b:Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/v;->a:Loj/a;

    return-object v0
.end method

.method public y()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/v;->a:Loj/a;

    return-object v0
.end method
