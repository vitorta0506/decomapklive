.class public Lyi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/asn1/n;

.field public static final b:Lorg/bouncycastle/asn1/n;

.field public static final c:Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const-string v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyi/a;->a:Lorg/bouncycastle/asn1/n;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/n;->K(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/n;->K(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sput-object v0, Lyi/a;->b:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/n;->K(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sput-object v0, Lyi/a;->c:Lorg/bouncycastle/asn1/n;

    return-void
.end method
