.class public Ldj/d;
.super Lorg/bouncycastle/asn1/t0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/t0;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t0;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/t0;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerisignCzagExtension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
