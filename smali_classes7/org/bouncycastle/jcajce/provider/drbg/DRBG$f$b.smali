.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;I)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    return-void
.end method

.method static synthetic c(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    return p0
.end method

.method static synthetic d(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public a()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->d:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;->a(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b$a;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b$a;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;->a:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method
