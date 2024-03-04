.class final Lbj/a$a;
.super Lpj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj/a;
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
    .locals 11

    const-string v0, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lbj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC"

    invoke-static {v0}, Lbj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93"

    invoke-static {v0}, Lbj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"

    invoke-static {v0}, Lbj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lfk/e$f;

    move-object v1, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lbj/a;->b(Lfk/e;)Lfk/e;

    move-result-object v6

    const-string v0, "0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0"

    invoke-static {v6, v0}, Lbj/a;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v7

    new-instance v0, Lpj/i;

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
