.class Lorg/bouncycastle/asn1/m1;
.super Lorg/bouncycastle/asn1/q;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/q;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method e()Lorg/bouncycastle/asn1/q;
    .locals 0

    return-object p0
.end method

.method u(Lorg/bouncycastle/asn1/r;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/r;->J()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/asn1/r;->y(Lorg/bouncycastle/asn1/q;Z)V

    return-void
.end method
