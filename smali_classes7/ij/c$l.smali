.class final Lij/c$l;
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
    .locals 12

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const-string v0, "04000000000000000000020108A2E0CC0D99F8A5EF"

    invoke-static {v0}, Lij/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    new-instance v1, Lfk/e$e;

    const/16 v3, 0xa3

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v6, 0x7

    move-object v2, v1

    move-object v9, v0

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lij/c;->b(Lfk/e;)Lfk/e;

    move-result-object v2

    const-string v1, "0402FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE80289070FB05D38FF58321F2E800536D538CCDAA3D9"

    invoke-static {v2, v1}, Lij/c;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v3

    new-instance v7, Lpj/i;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v0

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method
