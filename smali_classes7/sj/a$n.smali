.class final Lsj/a$n;
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

    const-string v0, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lik/s1;

    invoke-direct {v0}, Lik/s1;-><init>()V

    invoke-static {v0}, Lsj/a;->a(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v0, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

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
