.class final Ljj/a$i;
.super Lpj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj/a;
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
    .locals 9

    const-string v0, "C302F41D932A36CDA7A3462F9E9E916B5BE8F1029AC4ACC1"

    invoke-static {v0}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lfk/e$f;

    const-string v1, "C302F41D932A36CDA7A3463093D18DB78FCE476DE1A86297"

    invoke-static {v1}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v1, "C302F41D932A36CDA7A3463093D18DB78FCE476DE1A86294"

    invoke-static {v1}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "13D56FFAEC78681E68F9DEB43B35BEC2FB68542E27897B79"

    invoke-static {v1}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v8}, Ljj/a;->b(Lfk/e;)Lfk/e;

    move-result-object v1

    const-string v2, "043AE9E58C82F63C30282E1FE7BBF43FA72C446AF6F4618129097E2C5667C2223A902AB5CA449D0084B7E5B3DE7CCC01C9"

    invoke-static {v1, v2}, Ljj/a;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v2

    new-instance v3, Lpj/i;

    invoke-direct {v3, v1, v2, v0, v7}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
