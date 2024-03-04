.class Lorg/bouncycastle/crypto/prng/f$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/bouncycastle/crypto/a;

.field private final b:I

.field private final c:[B

.field private final d:[B

.field private final e:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/a;I[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f$a;->a:Lorg/bouncycastle/crypto/a;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/f$a;->b:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/f$a;->c:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/f$a;->d:[B

    iput p5, p0, Lorg/bouncycastle/crypto/prng/f$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/crypto/prng/c;)Lwj/d;
    .locals 8

    new-instance v7, Lwj/a;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$a;->a:Lorg/bouncycastle/crypto/a;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/f$a;->b:I

    iget v3, p0, Lorg/bouncycastle/crypto/prng/f$a;->e:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/f$a;->d:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/f$a;->c:[B

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lwj/a;-><init>(Lorg/bouncycastle/crypto/a;IILorg/bouncycastle/crypto/prng/c;[B[B)V

    return-object v7
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTR-DRBG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$a;->a:Lorg/bouncycastle/crypto/a;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/a;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/prng/f$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
