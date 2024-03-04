.class abstract Lorg/bouncycastle/asn1/y1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/y1;->a:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/y1;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/y1;->b:I

    return v0
.end method

.method protected b(Z)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/y1;->a:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/v1;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/v1;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/v1;->d(Z)V

    :cond_0
    return-void
.end method
