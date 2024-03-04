.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$a;->a:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/c;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$a;->a:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f$b;-><init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$f;I)V

    return-object v0
.end method
