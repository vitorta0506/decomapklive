.class Lyk/c$h;
.super Lyk/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
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

    invoke-direct {p0}, Lyk/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Loj/v;Ljava/lang/Object;)Lvj/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object p2

    invoke-virtual {p2}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object p2

    invoke-static {p2}, Lpk/k;->y(Ljava/lang/Object;)Lpk/k;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpk/k;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-virtual {p1}, Loj/v;->F()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lpk/o;->x(Ljava/lang/Object;)Lpk/o;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/r$b;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/p;

    invoke-virtual {p2}, Lpk/k;->x()I

    move-result v3

    invoke-virtual {p2}, Lpk/k;->z()I

    move-result p2

    invoke-static {v0}, Lyk/e;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;-><init>(IILorg/bouncycastle/crypto/e;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/p;)V

    invoke-virtual {p1}, Lpk/o;->y()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;->g([B)Lorg/bouncycastle/pqc/crypto/xmss/r$b;

    move-result-object p2

    invoke-virtual {p1}, Lpk/o;->z()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;->h([B)Lorg/bouncycastle/pqc/crypto/xmss/r$b;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;->e()Lorg/bouncycastle/pqc/crypto/xmss/r;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Loj/v;->F()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/r$b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/g;->a([BI)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;->i(I)Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/p;)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/r$b;->f([B)Lorg/bouncycastle/pqc/crypto/xmss/r$b;

    move-result-object p1

    goto :goto_0
.end method
