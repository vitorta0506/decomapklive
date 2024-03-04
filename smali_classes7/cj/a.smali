.class public interface abstract Lcj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/asn1/n;

.field public static final b:Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const-string v1, "0.4.0.127.0.15.1.1.13.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcj/a;->a:Lorg/bouncycastle/asn1/n;

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const-string v1, "0.4.0.127.0.15.1.1.14.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcj/a;->b:Lorg/bouncycastle/asn1/n;

    return-void
.end method
