.class public Lpk/f;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# static fields
.field private static final e:Ljava/math/BigInteger;


# instance fields
.field private a:I

.field private b:[I

.field private c:[I

.field private d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lpk/f;->e:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 8

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/f;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/f;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lpk/f;->b:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    new-instance v5, Lorg/bouncycastle/asn1/k;

    aget v4, v4, v3

    int-to-long v6, v4

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v4, Lorg/bouncycastle/asn1/k;

    iget-object v5, p0, Lpk/f;->c:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v4, Lorg/bouncycastle/asn1/k;

    iget-object v5, p0, Lpk/f;->d:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/f;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/k;

    iget v5, p0, Lpk/f;->a:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v4, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v0
.end method
