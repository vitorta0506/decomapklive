.class Lorg/bouncycastle/asn1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lorg/bouncycastle/asn1/f0;

.field static final b:Lorg/bouncycastle/asn1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/f0;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f0;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/c0;->a:Lorg/bouncycastle/asn1/f0;

    new-instance v0, Lorg/bouncycastle/asn1/h0;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/h0;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/c0;->b:Lorg/bouncycastle/asn1/h0;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/f;)Lorg/bouncycastle/asn1/f0;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/f;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/c0;->a:Lorg/bouncycastle/asn1/f0;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/f0;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/f0;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v0
.end method
