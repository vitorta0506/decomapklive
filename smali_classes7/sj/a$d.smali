.class final Lsj/a$d;
.super Lpj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpj/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lpj/i;
    .locals 7

    const-string v0, "D09E8800291CB85396CC6717393284AAA0DA64BA"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lik/q0;

    invoke-direct {v0}, Lik/q0;-><init>()V

    invoke-static {v0}, Lsj/a;->a(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v0, "0400C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"

    invoke-static {v2, v0}, Lsj/a;->b(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v3

    new-instance v0, Lpj/i;

    invoke-virtual {v2}, Lfk/e;->s()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lfk/e;->n()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
