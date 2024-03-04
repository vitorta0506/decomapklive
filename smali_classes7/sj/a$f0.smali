.class final Lsj/a$f0;
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

    const-string v0, "BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v0, Lik/a0;

    invoke-direct {v0}, Lik/a0;-><init>()V

    invoke-static {v0}, Lsj/a;->a(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v0, "04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

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
