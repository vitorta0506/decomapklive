.class public Lorg/bouncycastle/asn1/j;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/a2;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/bouncycastle/asn1/j;->a:I

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/j;->b:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->c:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/a2;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static b(ILorg/bouncycastle/asn1/t1;[[B)Lorg/bouncycastle/asn1/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/f1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/f1;-><init>([B)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/q0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/q0;-><init>([B)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/bouncycastle/asn1/h1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/h1;-><init>([B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/bouncycastle/asn1/s0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/s0;-><init>([B)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/bouncycastle/asn1/i;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/i;-><init>([B)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/bouncycastle/asn1/z;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/z;-><init>([B)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/bouncycastle/asn1/t0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/t0;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/bouncycastle/asn1/g1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/g1;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/bouncycastle/asn1/c1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c1;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/bouncycastle/asn1/z0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/z0;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/bouncycastle/asn1/v0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/v0;-><init>([B)V

    return-object p0

    :pswitch_b
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/j;->d(Lorg/bouncycastle/asn1/t1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/n;->M([B)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->c()I

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/b;->K(ILjava/io/InputStream;)Lorg/bouncycastle/asn1/b;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/k;-><init>([BZ)V

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/j;->d(Lorg/bouncycastle/asn1/t1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/c;->K([B)Lorg/bouncycastle/asn1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/m0;

    invoke-static {p1}, Lorg/bouncycastle/asn1/j;->c(Lorg/bouncycastle/asn1/t1;)[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/m0;-><init>([C)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/e1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/e1;-><init>([B)V

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/j;->d(Lorg/bouncycastle/asn1/t1;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/g;->K([B)Lorg/bouncycastle/asn1/g;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Lorg/bouncycastle/asn1/t1;)[C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t1;->c()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "EOF encountered in middle of BMPString"

    if-lt v0, v3, :cond_1

    invoke-static {p0, v4, v5, v3}, Ldl/a;->d(Ljava/io/InputStream;[BII)I

    move-result v8

    if-ne v8, v3, :cond_0

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez v0, :cond_4

    invoke-static {p0, v4, v5, v0}, Ldl/a;->d(Ljava/io/InputStream;[BII)I

    move-result v8

    if-ne v8, v0, :cond_3

    :goto_1
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v6, 0x1

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v2, v6

    if-lt v8, v0, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    move v5, v8

    move v6, v9

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t1;->c()I

    move-result p0

    if-nez p0, :cond_5

    if-ne v1, v6, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lorg/bouncycastle/asn1/t1;[[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t1;->c()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/t1;->d([B)V

    return-object v1
.end method

.method static k(Ljava/io/InputStream;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_8

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ltz v1, :cond_5

    if-lt v1, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DER length more than 4 bytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return v0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static p(Ljava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-eqz v1, :cond_2

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    and-int/lit8 p0, v0, 0x7f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return p1
.end method


# virtual methods
.method protected a(III)Lorg/bouncycastle/asn1/r;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/t1;

    iget v3, p0, Lorg/bouncycastle/asn1/j;->a:I

    invoke-direct {v2, p0, p3, v3}, Lorg/bouncycastle/asn1/t1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/i1;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lorg/bouncycastle/asn1/i1;-><init>(ZI[B)V

    return-object p1

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/w;

    invoke-direct {p1, v2}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/asn1/w;->c(ZI)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_a

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/j;->q(Lorg/bouncycastle/asn1/t1;)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/l1;->b(Lorg/bouncycastle/asn1/f;)Lorg/bouncycastle/asn1/u;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/j;->b:Z

    if-eqz p1, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/x1;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x1;-><init>([B)V

    return-object p1

    :cond_5
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/j;->q(Lorg/bouncycastle/asn1/t1;)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/l1;->a(Lorg/bouncycastle/asn1/f;)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/asn1/k1;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/j;->q(Lorg/bouncycastle/asn1/t1;)Lorg/bouncycastle/asn1/f;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object p1

    :cond_7
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/j;->q(Lorg/bouncycastle/asn1/t1;)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->f()I

    move-result p2

    new-array p3, p2, [Lorg/bouncycastle/asn1/o;

    :goto_1
    if-eq v1, p2, :cond_9

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/f;->d(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/o;

    if-eqz v2, :cond_8

    check-cast v0, Lorg/bouncycastle/asn1/o;

    aput-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/asn1/d0;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/d0;-><init>([Lorg/bouncycastle/asn1/o;)V

    return-object p1

    :cond_a
    iget-object p1, p0, Lorg/bouncycastle/asn1/j;->c:[[B

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/asn1/j;->b(ILorg/bouncycastle/asn1/t1;[[B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    return-object p1
.end method

.method e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/j;->a:I

    return v0
.end method

.method protected j()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/j;->a:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/asn1/j;->k(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public o()Lorg/bouncycastle/asn1/r;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/j;->p(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/j;->j()I

    move-result v4

    if-gez v4, :cond_a

    if-eqz v2, :cond_9

    new-instance v2, Lorg/bouncycastle/asn1/v1;

    iget v4, p0, Lorg/bouncycastle/asn1/j;->a:I

    invoke-direct {v2, p0, v4}, Lorg/bouncycastle/asn1/v1;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lorg/bouncycastle/asn1/w;

    iget v5, p0, Lorg/bouncycastle/asn1/j;->a:I

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/b0;

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/asn1/b0;-><init>(ILorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/k0;

    invoke-direct {v0, v3, v1, v4}, Lorg/bouncycastle/asn1/k0;-><init>(ZILorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x4

    if-eq v1, v0, :cond_8

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6

    const/16 v0, 0x11

    if-ne v1, v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/i0;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/i0;-><init>(Lorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/i0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/g0;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/g0;-><init>(Lorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/g0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lorg/bouncycastle/asn1/p0;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/p0;-><init>(Lorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lorg/bouncycastle/asn1/e0;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/e0;-><init>(Lorg/bouncycastle/asn1/w;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/e0;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lorg/bouncycastle/asn1/j;->a(III)Lorg/bouncycastle/asn1/r;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method q(Lorg/bouncycastle/asn1/t1;)Lorg/bouncycastle/asn1/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lorg/bouncycastle/asn1/f;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/f;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/j;->o()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method
