.class public Ldj/b;
.super Lorg/bouncycastle/asn1/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/n0;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->N()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/n0;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/b;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
