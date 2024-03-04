.class Lyk/c$e;
.super Lyk/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyk/c$f;-><init>(Lyk/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lyk/c$a;)V
    .locals 0

    invoke-direct {p0}, Lyk/c$e;-><init>()V

    return-void
.end method


# virtual methods
.method a(Loj/v;Ljava/lang/Object;)Lvj/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lxk/c;

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object v0

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object p1

    invoke-virtual {p1}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lpk/i;->x(Ljava/lang/Object;)Lpk/i;

    move-result-object p1

    invoke-static {p1}, Lyk/e;->e(Lpk/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lxk/c;-><init>([BLjava/lang/String;)V

    return-object p2
.end method
