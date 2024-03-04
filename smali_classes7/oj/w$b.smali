.class public Loj/w$b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loj/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lorg/bouncycastle/asn1/s;

.field b:Loj/m;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

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

.method public static y(Ljava/lang/Object;)Loj/w$b;
    .locals 1

    instance-of v0, p0, Loj/w$b;

    if-eqz v0, :cond_0

    check-cast p0, Loj/w$b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/w$b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/w$b;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 2

    iget-object v0, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public x()Loj/m;
    .locals 2

    iget-object v0, p0, Loj/w$b;->b:Loj/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/m;->F(Ljava/lang/Object;)Loj/m;

    move-result-object v0

    iput-object v0, p0, Loj/w$b;->b:Loj/m;

    :cond_0
    iget-object v0, p0, Loj/w$b;->b:Loj/m;

    return-object v0
.end method

.method public z()Lorg/bouncycastle/asn1/k;
    .locals 2

    iget-object v0, p0, Loj/w$b;->a:Lorg/bouncycastle/asn1/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    return-object v0
.end method
