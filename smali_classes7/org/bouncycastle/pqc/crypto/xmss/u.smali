.class public final Lorg/bouncycastle/pqc/crypto/xmss/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/bouncycastle/pqc/crypto/xmss/t;

.field private final b:I

.field private final c:I

.field private final d:Lorg/bouncycastle/asn1/n;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Lorg/bouncycastle/pqc/crypto/xmss/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    sget-object v3, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    sget-object v3, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    sget-object v3, Lej/b;->m:Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    sget-object v3, Lej/b;->n:Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/xmss/u;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/n;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const-string v0, "digest == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->b:I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/u;->a()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->c:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/d;->b(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->f:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->d:Lorg/bouncycastle/asn1/n;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/k;-><init>(Lorg/bouncycastle/asn1/n;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->h:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->g:I

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->d()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->e:I

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v1

    invoke-static {v0, p2, v2, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/c;->c(Ljava/lang/String;IIII)Lorg/bouncycastle/pqc/crypto/xmss/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->a:Lorg/bouncycastle/pqc/crypto/xmss/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/e;)V
    .locals 0

    invoke-interface {p2}, Lorg/bouncycastle/crypto/e;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/d;->c(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/asn1/n;)V

    return-void
.end method

.method private a()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->b:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(I)Lorg/bouncycastle/pqc/crypto/xmss/u;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/u;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/e;->d(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/u;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->b:I

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->c:I

    return v0
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->h:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v0

    return v0
.end method

.method e()Lorg/bouncycastle/pqc/crypto/xmss/t;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->a:Lorg/bouncycastle/pqc/crypto/xmss/t;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->d:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->g:I

    return v0
.end method

.method i()Lorg/bouncycastle/pqc/crypto/xmss/i;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/i;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->h:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/i;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/k;)V

    return-object v0
.end method

.method j()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/u;->e:I

    return v0
.end method
