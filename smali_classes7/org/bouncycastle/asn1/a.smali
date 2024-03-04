.class public abstract Lorg/bouncycastle/asn1/a;
.super Lorg/bouncycastle/asn1/r;
.source "SourceFile"


# instance fields
.field protected final a:Z

.field protected final b:I

.field protected final c:[B


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/a;->a:Z

    iput p2, p0, Lorg/bouncycastle/asn1/a;->b:I

    invoke-static {p3}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    return-void
.end method

.method public static M(Ljava/lang/Object;)Lorg/bouncycastle/asn1/a;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/a;->M(Ljava/lang/Object;)Lorg/bouncycastle/asn1/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to construct object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/a;

    return-object p0
.end method

.method private O(I[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v4, v2, 0x7f

    if-eqz v4, :cond_0

    :goto_0
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "corrupted stream - invalid high tag number found"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    :cond_2
    array-length v2, p2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    new-array v4, v2, [B

    sub-int/2addr v2, v3

    invoke-static {p2, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    return-object v4
.end method


# virtual methods
.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/a;->a:Z

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/a;->b:I

    return v0
.end method

.method public L()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public N(I)Lorg/bouncycastle/asn1/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/a;->O(I[B)[B

    move-result-object p1

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    aget-byte v0, p1, v1

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unsupported tag number"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/a;->a:Z

    iget v1, p0, Lorg/bouncycastle/asn1/a;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/a;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CONSTRUCTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "APPLICATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/a;->K()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    if-eqz v1, :cond_1

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->f([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, " #null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method x(Lorg/bouncycastle/asn1/r;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/a;

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/a;->a:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/a;->a:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/bouncycastle/asn1/a;->b:I

    iget v2, p1, Lorg/bouncycastle/asn1/a;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->c:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/bouncycastle/asn1/a;->b:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/bouncycastle/asn1/q;->m(ZII[B)V

    return-void
.end method

.method z()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/a;->b:I

    invoke-static {v0}, Lorg/bouncycastle/asn1/a2;->b(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/a2;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
