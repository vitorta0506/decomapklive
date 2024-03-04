.class public Lorg/bouncycastle/asn1/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/e;
.implements Lorg/bouncycastle/asn1/u1;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lorg/bouncycastle/asn1/w;


# direct methods
.method constructor <init>(ZILorg/bouncycastle/asn1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/k0;->a:Z

    iput p2, p0, Lorg/bouncycastle/asn1/k0;->b:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/k0;->c:Lorg/bouncycastle/asn1/w;

    return-void
.end method


# virtual methods
.method public d()Lorg/bouncycastle/asn1/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/k0;->c:Lorg/bouncycastle/asn1/w;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/k0;->a:Z

    iget v2, p0, Lorg/bouncycastle/asn1/k0;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/w;->c(ZI)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/k0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
