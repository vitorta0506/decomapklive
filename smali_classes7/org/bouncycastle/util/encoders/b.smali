.class public Lorg/bouncycastle/util/encoders/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/encoders/c;


# instance fields
.field protected final a:[B

.field protected b:B

.field protected final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/b;->a:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/b;->b:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/b;->c:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/b;->c()V

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method


# virtual methods
.method public a([BIILjava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x48

    new-array v0, v0, [B

    :goto_0
    if-lez p3, :cond_0

    const/16 v1, 0x36

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/util/encoders/b;->b([BII[BI)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x2

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public b([BII[BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    move v2, p2

    move v3, p5

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/bouncycastle/util/encoders/b;->a:[B

    ushr-int/lit8 v9, v2, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v8, v9

    aput-byte v9, p4, v3

    add-int/lit8 v3, v7, 0x1

    shl-int/lit8 v2, v2, 0x4

    ushr-int/lit8 v9, v4, 0x4

    or-int/2addr v2, v9

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, p4, v7

    add-int/lit8 v2, v3, 0x1

    shl-int/2addr v4, v1

    ushr-int/lit8 v7, v5, 0x6

    or-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, p4, v3

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v5, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, p4, v2

    move v2, v6

    goto :goto_0

    :cond_0
    sub-int p2, v2, p2

    sub-int/2addr p3, p2

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    if-eq p3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, v2, 0x1

    aget-byte p3, p1, v2

    and-int/lit16 p3, p3, 0xff

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/b;->a:[B

    ushr-int/lit8 v2, p3, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v0, v2

    aput-byte v2, p4, v3

    add-int/lit8 v2, p2, 0x1

    shl-int/lit8 p3, p3, 0x4

    ushr-int/lit8 v3, p1, 0x4

    or-int/2addr p3, v3

    and-int/lit8 p3, p3, 0x3f

    aget-byte p3, v0, p3

    aput-byte p3, p4, p2

    add-int/lit8 p2, v2, 0x1

    shl-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, v0, p1

    aput-byte p1, p4, v2

    add-int/lit8 v3, p2, 0x1

    iget-byte p1, p0, Lorg/bouncycastle/util/encoders/b;->b:B

    aput-byte p1, p4, p2

    goto :goto_1

    :cond_2
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, v3, 0x1

    iget-object p3, p0, Lorg/bouncycastle/util/encoders/b;->a:[B

    ushr-int/lit8 v0, p1, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p3, v0

    aput-byte v0, p4, v3

    add-int/lit8 v0, p2, 0x1

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, p3, p1

    aput-byte p1, p4, p2

    add-int/lit8 p1, v0, 0x1

    iget-byte p2, p0, Lorg/bouncycastle/util/encoders/b;->b:B

    aput-byte p2, p4, v0

    add-int/lit8 v3, p1, 0x1

    aput-byte p2, p4, p1

    :goto_1
    sub-int/2addr v3, p5

    return v3
.end method

.method protected c()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/b;->c:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/b;->a:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/b;->c:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
