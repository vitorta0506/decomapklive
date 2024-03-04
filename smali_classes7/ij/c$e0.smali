.class final Lij/c$e0;
.super Lpj/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lij/c;
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

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "B4E134D3FB59EB8BAB57274904664D5AF50388BA"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "B99B99B099B323E02709A4D696E6768756151751"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v10

    const-string v0, "0100000000000000000000351EE786A818F3A1A16B"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Lfk/e$f;

    move-object v1, v0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lij/c;->b(Lfk/e;)Lfk/e;

    move-result-object v6

    const-string v0, "0452DCB034293A117E1F4FF11B30F7199D3144CE6DFEAFFEF2E331F296E071FA0DF9982CFEA7D43F2E"

    invoke-static {v6, v0}, Lij/c;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v7

    new-instance v0, Lpj/i;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
