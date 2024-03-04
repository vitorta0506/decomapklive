.class public Lorg/bouncycastle/asn1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/e;
.implements Lorg/bouncycastle/asn1/u1;


# instance fields
.field private final a:I

.field private final b:Lorg/bouncycastle/asn1/w;


# direct methods
.method constructor <init>(ILorg/bouncycastle/asn1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/b0;->a:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/b0;->b:Lorg/bouncycastle/asn1/w;

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

    new-instance v0, Lorg/bouncycastle/asn1/a0;

    iget v1, p0, Lorg/bouncycastle/asn1/b0;->a:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/b0;->b:Lorg/bouncycastle/asn1/w;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/w;->d()Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/a0;-><init>(ILorg/bouncycastle/asn1/f;)V

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
