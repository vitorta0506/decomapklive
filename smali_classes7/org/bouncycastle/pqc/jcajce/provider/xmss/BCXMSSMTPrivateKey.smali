.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x6a9c720efa7851b3L


# instance fields
.field private transient attributes:Lorg/bouncycastle/asn1/u;

.field private transient keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

.field private transient treeDigest:Lorg/bouncycastle/asn1/n;


# direct methods
.method public constructor <init>(Lgj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->init(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/pqc/crypto/xmss/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

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

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->attributes:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpk/k;->y(Ljava/lang/Object;)Lpk/k;

    move-result-object v0

    invoke-virtual {v0}, Lpk/k;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    invoke-static {p1}, Lyk/a;->b(Lgj/d;)Lvj/a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/q;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->init(Lgj/d;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->getEncoded()[B

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
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/q;->h()[B

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q;->h()[B

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

.method public extractKeyShard(I)Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSMTPrivateKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/q;->c(I)Lorg/bouncycastle/pqc/crypto/xmss/q;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/pqc/crypto/xmss/q;)V

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->attributes:Lorg/bouncycastle/asn1/u;

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

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v0

    return v0
.end method

.method public getIndex()J
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->getUsagesRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key exhausted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    return-object v0
.end method

.method public getLayers()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;->b()I

    move-result v0

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/a;->b(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTreeDigestOID()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public getUsagesRemaining()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->treeDigest:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSMTPrivateKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/q;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/q;->h()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
