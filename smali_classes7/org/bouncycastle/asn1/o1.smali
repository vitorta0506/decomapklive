.class public Lorg/bouncycastle/asn1/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/t;


# instance fields
.field private a:Lorg/bouncycastle/asn1/w;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/o1;->a:Lorg/bouncycastle/asn1/w;

    return-void
.end method


# virtual methods
.method public d()Lorg/bouncycastle/asn1/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/n1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/o1;->a:Lorg/bouncycastle/asn1/w;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/w;->d()Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/o1;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
