.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/asn1/n;

    sget-object v1, Lgj/c;->l0:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Loj/c0;->m:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgj/c;->r0:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lgj/c;->u0:Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/a;->a:[Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method static a(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/d;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/util/d;-><init>([BI)V

    invoke-virtual {v0}, Lorg/bouncycastle/util/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/d;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/util/d;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/util/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
