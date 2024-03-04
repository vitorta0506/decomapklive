.class final Lpj/f$e;
.super Lpj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpj/f;
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
    .locals 10

    const-string v0, "155555555555555555555555610C0B196812BFB6288A3EA3"

    invoke-static {v0}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v9, Lfk/e$e;

    const-string v1, "6C01074756099122221056911C77D77E77A777E7E7E77FCB"

    invoke-static {v1}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v1, "71FE1AF926CF847989EFEF8DB459F66394D90F32AD3F15E8"

    invoke-static {v1}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const/16 v2, 0xbf

    const/16 v3, 0x9

    move-object v1, v9

    move-object v6, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lfk/e$e;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v9}, Lpj/f;->b(Lfk/e;)Lfk/e;

    move-result-object v1

    const-string v2, "03375D4CE24FDE434489DE8746E71786015009E66E38A926DD"

    invoke-static {v1, v2}, Lpj/f;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v2

    new-instance v3, Lpj/i;

    invoke-direct {v3, v1, v2, v0, v8}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
