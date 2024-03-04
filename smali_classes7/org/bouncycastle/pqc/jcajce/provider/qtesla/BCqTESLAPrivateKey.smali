.class public Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient attributes:Lorg/bouncycastle/asn1/u;

.field private transient keyParams:Luk/a;


# direct methods
.method public constructor <init>(Lgj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->init(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Luk/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    return-void
.end method

.method private init(Lgj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lgj/d;->x()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->attributes:Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lyk/a;->b(Lgj/d;)Lvj/a;

    move-result-object p1

    check-cast p1, Luk/a;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lgj/d;->y(Ljava/lang/Object;)Lgj/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->init(Lgj/d;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v1}, Luk/a;->c()I

    move-result v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v3}, Luk/a;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v1}, Luk/a;->b()[B

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {p1}, Luk/a;->b()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v0}, Luk/a;->c()I

    move-result v0

    invoke-static {v0}, Luk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->attributes:Lorg/bouncycastle/asn1/u;

    invoke-static {v0, v1}, Lyk/b;->a(Lvj/a;Lorg/bouncycastle/asn1/u;)Lgj/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    return-object v0
.end method

.method public getParams()Lbl/a;
    .locals 2

    new-instance v0, Lbl/a;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v0}, Luk/a;->c()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPrivateKey;->keyParams:Luk/a;

    invoke-virtual {v1}, Luk/a;->b()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
