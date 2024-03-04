.class Lorg/bouncycastle/crypto/prng/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/prng/a;->get(I)Lorg/bouncycastle/crypto/prng/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/bouncycastle/crypto/prng/a;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/prng/a;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/a$a;->b:Lorg/bouncycastle/crypto/prng/a;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/a$a;->b:Lorg/bouncycastle/crypto/prng/a;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/a;->a(Lorg/bouncycastle/crypto/prng/a;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/a$a;->b:Lorg/bouncycastle/crypto/prng/a;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/a;->a(Lorg/bouncycastle/crypto/prng/a;)Ljava/security/SecureRandom;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/a$a;->b:Lorg/bouncycastle/crypto/prng/a;

    invoke-static {v0}, Lorg/bouncycastle/crypto/prng/a;->a(Lorg/bouncycastle/crypto/prng/a;)Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/prng/a$a;->a:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/prng/a$a;->a:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/a$a;->b:Lorg/bouncycastle/crypto/prng/a;

    invoke-static {v1}, Lorg/bouncycastle/crypto/prng/a;->a(Lorg/bouncycastle/crypto/prng/a;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/prng/a$a;->a:I

    return v0
.end method
