.class final Lpj/f$p;
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
    .locals 9

    const-string v0, "fffffffffffffffffffffffe5fb1a724dc80418648d8dd31"

    invoke-static {v0}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lfk/e$f;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v1, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-static {v1}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "cc22d6dfb95c6b25e49c0d6364a4e5980c393aa21668d953"

    invoke-static {v1}, Lpj/f;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v8}, Lpj/f;->b(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v1, "03eea2bae7e1497842f2de7769cfe9c989c072ad696f48034a"

    invoke-static {v2, v1}, Lpj/f;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v3

    new-instance v8, Lpj/i;

    const-string v1, "31a92ee2029fd10d901b113e990710f0d21ac6b6"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v6

    move-object v1, v8

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method
