.class Lorg/bouncycastle/asn1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/n$a;->a:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/n$a;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/n$a;->b:[B

    check-cast p1, Lorg/bouncycastle/asn1/n$a;

    iget-object p1, p1, Lorg/bouncycastle/asn1/n$a;->b:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/n$a;->a:I

    return v0
.end method
