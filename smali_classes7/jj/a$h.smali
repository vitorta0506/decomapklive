.class final Ljj/a$h;
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

    const-string v1, "6A91174076B1E0E19C39C031FE8685C1CAE040E5C69A28EF"

    invoke-static {v1}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "469A28EF7C28CCA3DC721D044F4496BCCA7EF4146FBF25C9"

    invoke-static {v1}, Ljj/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v1, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v8}, Ljj/a;->b(Lfk/e;)Lfk/e;

    move-result-object v1

    const-string v2, "04C0A0647EAAB6A48753B033C56CB0F0900A2F5C4853375FD614B690866ABD5BB88B5F4828C1490002E6773FA2FA299B8F"

    invoke-static {v1, v2}, Ljj/a;->c(Lfk/e;Ljava/lang/String;)Lpj/k;

    move-result-object v2

    new-instance v3, Lpj/i;

    invoke-direct {v3, v1, v2, v0, v7}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
