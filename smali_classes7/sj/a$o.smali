.class final Lsj/a$o;
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

    new-instance v0, Lik/w1;

    invoke-direct {v0}, Lik/w1;-><init>()V

    invoke-static {v0}, Lsj/a;->a(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v0, "04017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD612601DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3"

    invoke-static {v2, v0}, Lsj/a;->b(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v3

    new-instance v0, Lpj/i;

    invoke-virtual {v2}, Lfk/e;->s()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lfk/e;->n()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
