.class final Lij/c$u;
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
    .locals 13

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-string v0, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-string v0, "77E2B07370EB0F832A6DD5B62DFC88CD06BB84BE"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    invoke-static {v1}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v1, Lfk/e$e;

    const/16 v3, 0x11b

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/16 v6, 0xc

    move-object v2, v1

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lij/c;->b(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v1, "0405F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B1205303676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    invoke-static {v2, v1}, Lij/c;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v3

    new-instance v7, Lpj/i;

    move-object v1, v7

    move-object v4, v11

    move-object v5, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
