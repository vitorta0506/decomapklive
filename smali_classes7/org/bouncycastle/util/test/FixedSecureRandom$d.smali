.class Lorg/bouncycastle/util/test/FixedSecureRandom$d;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:[B

.field b:I


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/test/FixedSecureRandom$c;

    invoke-direct {v0}, Lorg/bouncycastle/util/test/FixedSecureRandom$c;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    const-string v0, "01020304ffffffff0506070811111111"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->b:I

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->a:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom$d;->b:I

    return-void
.end method
