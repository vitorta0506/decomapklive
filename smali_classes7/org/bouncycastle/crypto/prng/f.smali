.class public Lorg/bouncycastle/crypto/prng/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/f$a;,
        Lorg/bouncycastle/crypto/prng/f$b;,
        Lorg/bouncycastle/crypto/prng/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/security/SecureRandom;

.field private final b:Lorg/bouncycastle/crypto/prng/d;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/f;->d:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f;->a:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/crypto/prng/a;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/a;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/f;->b:Lorg/bouncycastle/crypto/prng/d;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/f;->d:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/f;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f;->b:Lorg/bouncycastle/crypto/prng/d;

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/crypto/e;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/crypto/prng/f;->e(Lorg/bouncycastle/crypto/e;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lorg/bouncycastle/crypto/e;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/e;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public b(Lorg/bouncycastle/crypto/a;I[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 10

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/f;->b:Lorg/bouncycastle/crypto/prng/d;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/d;->get(I)Lorg/bouncycastle/crypto/prng/c;

    move-result-object v2

    new-instance v9, Lorg/bouncycastle/crypto/prng/f$a;

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/f;->c:[B

    iget v8, p0, Lorg/bouncycastle/crypto/prng/f;->d:I

    move-object v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/prng/f$a;-><init>(Lorg/bouncycastle/crypto/a;I[B[BI)V

    invoke-direct {v0, v1, v2, v9, p4}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/c;Lorg/bouncycastle/crypto/prng/b;Z)V

    return-object v0
.end method

.method public c(Lorg/bouncycastle/crypto/g;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/f;->b:Lorg/bouncycastle/crypto/prng/d;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/d;->get(I)Lorg/bouncycastle/crypto/prng/c;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/f$b;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/f;->c:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/f;->d:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/f$b;-><init>(Lorg/bouncycastle/crypto/g;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/c;Lorg/bouncycastle/crypto/prng/b;Z)V

    return-object v0
.end method

.method public d(Lorg/bouncycastle/crypto/e;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/f;->b:Lorg/bouncycastle/crypto/prng/d;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/d;->get(I)Lorg/bouncycastle/crypto/prng/c;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/f$c;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/f;->c:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/f;->d:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/f$c;-><init>(Lorg/bouncycastle/crypto/e;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/c;Lorg/bouncycastle/crypto/prng/b;Z)V

    return-object v0
.end method

.method public f(I)Lorg/bouncycastle/crypto/prng/f;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/f;->e:I

    return-object p0
.end method

.method public g([B)Lorg/bouncycastle/crypto/prng/f;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f;->c:[B

    return-object p0
.end method
