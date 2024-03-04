.class public Lrk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/e;


# instance fields
.field private final a:[B

.field private final b:Lrk/f;

.field private final c:Lrk/n;

.field private final d:[[B

.field private final e:Ljava/lang/Object;

.field private volatile f:Lorg/bouncycastle/crypto/e;


# direct methods
.method public constructor <init>(Lrk/f;Lrk/n;Lorg/bouncycastle/crypto/e;[B[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrk/i;->b:Lrk/f;

    iput-object p2, p0, Lrk/i;->c:Lrk/n;

    iput-object p3, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    iput-object p4, p0, Lrk/i;->a:[B

    iput-object p5, p0, Lrk/i;->d:[[B

    const/4 p1, 0x0

    iput-object p1, p0, Lrk/i;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    move-result p1

    return p1
.end method

.method public b(B)V
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/e;->b(B)V

    return-void
.end method

.method public c([BII)V
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/e;->c([BII)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->d()I

    move-result v0

    return v0
.end method

.method g()[B
    .locals 1

    iget-object v0, p0, Lrk/i;->a:[B

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()[[B
    .locals 1

    iget-object v0, p0, Lrk/i;->d:[[B

    return-object v0
.end method

.method i()Lrk/f;
    .locals 1

    iget-object v0, p0, Lrk/i;->b:Lrk/f;

    return-object v0
.end method

.method j()[B
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [B

    iget-object v1, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    const/4 v1, 0x0

    iput-object v1, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    return-object v0
.end method

.method k()Lrk/n;
    .locals 1

    iget-object v0, p0, Lrk/i;->c:Lrk/n;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lrk/i;->f:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->reset()V

    return-void
.end method
