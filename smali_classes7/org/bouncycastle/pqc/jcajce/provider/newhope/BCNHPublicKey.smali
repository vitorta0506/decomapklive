.class public Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/NHPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient params:Ltk/b;


# direct methods
.method public constructor <init>(Loj/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->init(Loj/v;)V

    return-void
.end method

.method public constructor <init>(Ltk/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    return-void
.end method

.method private init(Loj/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lyk/c;->a(Loj/v;)Lvj/a;

    move-result-object p1

    check-cast p1, Ltk/b;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

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

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->init(Loj/v;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    invoke-virtual {v0}, Ltk/b;->b()[B

    move-result-object v0

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    invoke-virtual {p1}, Ltk/b;->b()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    invoke-static {v0}, Lyk/d;->a(Lvj/a;)Loj/v;

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

    const-string v0, "X.509"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    return-object v0
.end method

.method public getPublicData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    invoke-virtual {v0}, Ltk/b;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Ltk/b;

    invoke-virtual {v0}, Ltk/b;->b()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v0

    return v0
.end method
