.class final Lij/c$j;
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
    .locals 14

    const-string v0, "03E5A88919D7CAFCBF415F07C2176573B2"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v0, "04B8266A46C55657AC734CE38F018F2192"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-string v0, "985BD3ADBAD4D696E676875615175A21B43A97E3"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v13

    const-string v0, "0400000000000000016954A233049BA98F"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v0, Lfk/e$e;

    const/16 v2, 0x83

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x8

    move-object v1, v0

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lij/c;->b(Lfk/e;)Lfk/e;

    move-result-object v9

    const-string v0, "040356DCD8F2F95031AD652D23951BB366A80648F06D867940A5366D9E265DE9EB240F"

    invoke-static {v9, v0}, Lij/c;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v10

    new-instance v0, Lpj/i;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
