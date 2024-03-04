.class public interface abstract Lwi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/bouncycastle/asn1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const-string v1, "1.2.250.1.223.101.256.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwi/b;->a:Lorg/bouncycastle/asn1/n;

    return-void
.end method
