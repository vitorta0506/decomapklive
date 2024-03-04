.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bouncycastle/asn1/n;

    sget-object v1, Lpj/o;->h4:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lfj/b;->j:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpj/o;->i4:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/a;->a:[Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method static a(Ljava/math/BigInteger;Ljava/security/interfaces/DSAParams;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/bouncycastle/util/d;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lorg/bouncycastle/util/a;->l([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/util/d;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/util/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/security/interfaces/DSAParams;)Lvj/h;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lvj/h;

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lvj/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
