.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/security/SecureRandom;

.field private final d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$e;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$e;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->c()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->c:Ljava/security/SecureRandom;

    new-instance v2, Lorg/bouncycastle/crypto/prng/f;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$a;

    invoke-direct {v3, p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$a;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/prng/f;-><init>(Lorg/bouncycastle/crypto/prng/d;)V

    const-string v3, "Bouncy Castle Hybrid Entropy Source"

    invoke-static {v3}, Lorg/bouncycastle/util/i;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/prng/f;->g([B)Lorg/bouncycastle/crypto/prng/f;

    move-result-object v2

    new-instance v3, Luj/a;

    new-instance v4, Lrj/h;

    invoke-direct {v4}, Lrj/h;-><init>()V

    invoke-direct {v3, v4}, Luj/a;-><init>(Lorg/bouncycastle/crypto/e;)V

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/prng/f;->c(Lorg/bouncycastle/crypto/g;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->c:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static synthetic b(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 2

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->reseed([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public setSeed(J)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->setSeed(J)V

    :cond_0
    return-void
.end method

.method public setSeed([B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->d:Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;->setSeed([B)V

    :cond_0
    return-void
.end method
