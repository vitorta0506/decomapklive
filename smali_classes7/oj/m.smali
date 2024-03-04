.class public Loj/m;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Hashtable;

.field private b:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Loj/m;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/l;->B(Ljava/lang/Object;)Loj/l;

    move-result-object v0

    iget-object v1, p0, Loj/m;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Loj/l;->y()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Loj/m;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Loj/l;->y()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Loj/l;->y()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeated extension found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loj/l;->y()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private B(Z)[Lorg/bouncycastle/asn1/n;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Loj/m;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loj/l;

    invoke-virtual {v3}, Loj/l;->G()Z

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Loj/m;->I(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/n;

    move-result-object p1

    return-object p1
.end method

.method public static F(Ljava/lang/Object;)Loj/m;
    .locals 1

    instance-of v0, p0, Loj/m;

    if-eqz v0, :cond_0

    check-cast p0, Loj/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/m;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/m;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private I(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/n;
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/n;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public G()[Lorg/bouncycastle/asn1/n;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Loj/m;->B(Z)[Lorg/bouncycastle/asn1/n;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    iget-object v1, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Loj/m;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loj/l;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()[Lorg/bouncycastle/asn1/n;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Loj/m;->B(Z)[Lorg/bouncycastle/asn1/n;

    move-result-object v0

    return-object v0
.end method

.method public y(Lorg/bouncycastle/asn1/n;)Loj/l;
    .locals 1

    iget-object v0, p0, Loj/m;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loj/l;

    return-object p1
.end method

.method public z()[Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Loj/m;->b:Ljava/util/Vector;

    invoke-direct {p0, v0}, Loj/m;->I(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/n;

    move-result-object v0

    return-object v0
.end method
