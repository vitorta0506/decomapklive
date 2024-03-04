.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/bouncycastle/pqc/crypto/xmss/m$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method protected constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->c:J

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->d:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->a:I

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/pqc/crypto/xmss/m$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->b:I

    return p0
.end method

.method static synthetic b(Lorg/bouncycastle/pqc/crypto/xmss/m$a;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->c:J

    return-wide v0
.end method

.method static synthetic c(Lorg/bouncycastle/pqc/crypto/xmss/m$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->a:I

    return p0
.end method

.method static synthetic d(Lorg/bouncycastle/pqc/crypto/xmss/m$a;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->d:I

    return p0
.end method


# virtual methods
.method protected abstract e()Lorg/bouncycastle/pqc/crypto/xmss/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->d:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    return-object p1
.end method

.method protected g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->b:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    return-object p1
.end method

.method protected h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->c:J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->e()Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    return-object p1
.end method
