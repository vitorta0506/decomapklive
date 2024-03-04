.class public Lorg/bouncycastle/pqc/crypto/xmss/g$b;
.super Lorg/bouncycastle/pqc/crypto/xmss/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/pqc/crypto/xmss/m$a<",
        "Lorg/bouncycastle/pqc/crypto/xmss/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->e:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->f:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->g:I

    return-void
.end method

.method static synthetic i(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->e:I

    return p0
.end method

.method static synthetic j(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->f:I

    return p0
.end method

.method static synthetic k(Lorg/bouncycastle/pqc/crypto/xmss/g$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->g:I

    return p0
.end method


# virtual methods
.method protected bridge synthetic e()Lorg/bouncycastle/pqc/crypto/xmss/m$a;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->m()Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lorg/bouncycastle/pqc/crypto/xmss/m;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/g;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/g$b;Lorg/bouncycastle/pqc/crypto/xmss/g$a;)V

    return-object v0
.end method

.method protected m()Lorg/bouncycastle/pqc/crypto/xmss/g$b;
    .locals 0

    return-object p0
.end method

.method protected n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->e:I

    return-object p0
.end method

.method protected o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->f:I

    return-object p0
.end method

.method protected p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->g:I

    return-object p0
.end method
