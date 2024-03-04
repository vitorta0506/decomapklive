.class Lorg/bouncycastle/crypto/prng/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/bouncycastle/crypto/g;

.field private final b:[B

.field private final c:[B

.field private final d:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f$b;->a:Lorg/bouncycastle/crypto/g;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/f$b;->b:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/f$b;->c:[B

    iput p4, p0, Lorg/bouncycastle/crypto/prng/f$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/crypto/prng/c;)Lwj/d;
    .locals 7

    new-instance v6, Lwj/b;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$b;->a:Lorg/bouncycastle/crypto/g;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/f$b;->d:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/f$b;->c:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/f$b;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lwj/b;-><init>(Lorg/bouncycastle/crypto/g;ILorg/bouncycastle/crypto/prng/c;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/f$b;->a:Lorg/bouncycastle/crypto/g;

    instance-of v0, v0, Luj/a;

    const-string v1, "HMAC-DRBG-"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$b;->a:Lorg/bouncycastle/crypto/g;

    check-cast v1, Luj/a;

    invoke-virtual {v1}, Luj/a;->g()Lorg/bouncycastle/crypto/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/prng/f;->a(Lorg/bouncycastle/crypto/e;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$b;->a:Lorg/bouncycastle/crypto/g;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/g;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
