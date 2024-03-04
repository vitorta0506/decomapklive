.class Lorg/bouncycastle/crypto/prng/f$c;
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
    name = "c"
.end annotation


# instance fields
.field private final a:Lorg/bouncycastle/crypto/e;

.field private final b:[B

.field private final c:[B

.field private final d:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/e;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/f$c;->a:Lorg/bouncycastle/crypto/e;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/f$c;->b:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/f$c;->c:[B

    iput p4, p0, Lorg/bouncycastle/crypto/prng/f$c;->d:I

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/crypto/prng/c;)Lwj/d;
    .locals 7

    new-instance v6, Lwj/c;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$c;->a:Lorg/bouncycastle/crypto/e;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/f$c;->d:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/f$c;->c:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/f$c;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lwj/c;-><init>(Lorg/bouncycastle/crypto/e;ILorg/bouncycastle/crypto/prng/c;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HASH-DRBG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/f$c;->a:Lorg/bouncycastle/crypto/e;

    invoke-static {v1}, Lorg/bouncycastle/crypto/prng/f;->a(Lorg/bouncycastle/crypto/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
