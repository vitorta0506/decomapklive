.class public Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;
.super Lorg/bouncycastle/cert/X509CertificateHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Loj/h;->y(Ljava/lang/Object;)Loj/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Loj/h;)V

    return-void
.end method
