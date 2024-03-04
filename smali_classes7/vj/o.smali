.class public Lvj/o;
.super Lvj/l;
.source "SourceFile"


# instance fields
.field private m:Lorg/bouncycastle/asn1/n;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Lvj/o;->m:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lpj/i;)V
    .locals 0

    invoke-direct {p0, p2}, Lvj/l;-><init>(Lpj/i;)V

    iput-object p1, p0, Lvj/o;->m:Lorg/bouncycastle/asn1/n;

    return-void
.end method


# virtual methods
.method public h()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lvj/o;->m:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method
