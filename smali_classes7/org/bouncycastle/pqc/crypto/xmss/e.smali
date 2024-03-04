.class final Lorg/bouncycastle/pqc/crypto/xmss/e;
.super Lorg/bouncycastle/pqc/crypto/xmss/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/e$b;
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/e$b;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/m$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->e:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->i(Lorg/bouncycastle/pqc/crypto/xmss/e$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->f:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->j(Lorg/bouncycastle/pqc/crypto/xmss/e$b;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/e$b;Lorg/bouncycastle/pqc/crypto/xmss/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/e;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/e$b;)V

    return-void
.end method


# virtual methods
.method protected d()[B
    .locals 3

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/xmss/m;->d()[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/g;->c(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->f:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/g;->c(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->g:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/g;->c(I[BI)V

    return-object v0
.end method

.method protected e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->f:I

    return v0
.end method

.method protected f()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/e;->g:I

    return v0
.end method
