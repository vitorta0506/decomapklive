.class final Lsj/a$b;
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

    const-string v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lik/i0;

    invoke-direct {v0}, Lik/i0;-><init>()V

    invoke-static {v0}, Lsj/a;->a(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v0, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

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
