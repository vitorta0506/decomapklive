.class final Lorg/conscrypt/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/t;->b:Ljava/util/Map;

    const-string v1, "secp256r1"

    const-string v2, "prime256v1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.3.132.0.33"

    const-string v3, "secp224r1"

    .line 3
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.3.132.0.34"

    const-string v3, "secp384r1"

    .line 4
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.3.132.0.35"

    const-string v3, "secp521r1"

    .line 5
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1.2.840.10045.3.1.7"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    return-void
.end method


# virtual methods
.method a()Ljava/security/spec/ECParameterSpec;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lorg/conscrypt/NativeRef$EC_GROUP;)[[B

    move-result-object v1

    .line 3
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 4
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 5
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 6
    new-instance v1, Ljava/security/spec/ECFieldFp;

    invoke-direct {v1, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 7
    new-instance v2, Ljava/security/spec/EllipticCurve;

    invoke-direct {v2, v1, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 8
    new-instance v1, Lorg/conscrypt/u;

    new-instance v3, Lorg/conscrypt/NativeRef$EC_POINT;

    iget-object v4, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 9
    invoke-static {v4}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lorg/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v1, p0, v3}, Lorg/conscrypt/u;-><init>(Lorg/conscrypt/t;Lorg/conscrypt/NativeRef$EC_POINT;)V

    .line 10
    invoke-virtual {v1}, Lorg/conscrypt/u;->a()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v4}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lorg/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 12
    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v5}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lorg/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 13
    new-instance v5, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v5, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 14
    invoke-static {v5, v0}, Lorg/conscrypt/a0;->s(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    return-object v5
.end method

.method b()Lorg/conscrypt/NativeRef$EC_GROUP;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/t;->a:Lorg/conscrypt/NativeRef$EC_GROUP;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OpenSSLECGroupContext.equals is not defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
