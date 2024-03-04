.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$Default;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$e;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$NonceAndIV;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;
    }
.end annotation


# static fields
.field private static final a:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "sun.security.provider.Sun"

    const-string v2, "sun.security.provider.SecureRandom"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v2, "com.android.org.conscrypt.OpenSSLRandom"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "org.conscrypt.OpenSSLProvider"

    const-string v2, "org.conscrypt.OpenSSLRandom"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->a:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->e()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Z)Ljava/security/SecureRandom;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->d(Z)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->g()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static d(Z)Ljava/security/SecureRandom;
    .locals 4

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->f()Lorg/bouncycastle/crypto/prng/d;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/d;->get(I)Lorg/bouncycastle/crypto/prng/c;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/c;->a()[B

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->i([B)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->j([B)[B

    move-result-object v2

    :goto_0
    new-instance v3, Lorg/bouncycastle/crypto/prng/f;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/prng/f;-><init>(Lorg/bouncycastle/crypto/prng/d;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/prng/f;->g([B)Lorg/bouncycastle/crypto/prng/f;

    move-result-object v0

    new-instance v2, Lrj/h;

    invoke-direct {v2}, Lrj/h;-><init>()V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/c;->a()[B

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/c;->a()[B

    move-result-object v1

    invoke-static {v3, v1}, Lorg/bouncycastle/util/a;->j([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lorg/bouncycastle/crypto/prng/f;->d(Lorg/bouncycastle/crypto/e;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;-><init>()V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    if-eqz p0, :cond_2

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->i([B)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->j([B)[B

    move-result-object v1

    :goto_1
    new-instance v2, Lorg/bouncycastle/crypto/prng/f;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/crypto/prng/f;-><init>(Ljava/security/SecureRandom;Z)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/prng/f;->g([B)Lorg/bouncycastle/crypto/prng/f;

    move-result-object v1

    new-instance v2, Lrj/h;

    invoke-direct {v2}, Lrj/h;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lorg/bouncycastle/crypto/prng/f;->d(Lorg/bouncycastle/crypto/e;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method private static e()Ljava/security/SecureRandom;
    .locals 3

    const-string v0, "securerandom.source"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->h()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;-><init>([Ljava/lang/Object;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$g;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->h()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static f()Lorg/bouncycastle/crypto/prng/d;
    .locals 2

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$c;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/prng/d;

    return-object v0
.end method

.method private static g()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$b;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->e()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static final h()[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->a:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static i([B)[B
    .locals 4

    const-string v0, "Default"

    invoke-static {v0}, Lorg/bouncycastle/util/i;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/g;->j(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/g;->j(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/a;->l([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static j([B)[B
    .locals 4

    const-string v0, "Nonce"

    invoke-static {v0}, Lorg/bouncycastle/util/i;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/g;->m(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/g;->m(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/a;->l([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method
