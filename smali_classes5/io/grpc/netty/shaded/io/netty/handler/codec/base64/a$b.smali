.class final Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:[B

.field private b:I

.field private c:[B

.field private d:I

.field private e:Lkg/j;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->a:[B

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;-><init>()V

    return-void
.end method

.method private static c([BLkg/j;I[B)I
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 2
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    .line 3
    aget-byte v4, p0, v3

    const/16 v5, 0x3d

    const-string v6, "not encoded in Base64"

    if-ne v4, v5, :cond_0

    .line 4
    :try_start_0
    aget-byte p0, p3, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v3

    aget-byte p3, p3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x4

    or-int/2addr p0, p3

    .line 5
    invoke-virtual {p1, p2, p0}, Lkg/j;->X1(II)Lkg/j;

    return v1

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x3

    .line 7
    aget-byte p0, p0, v1

    if-ne p0, v5, :cond_2

    .line 8
    aget-byte p0, p3, v2

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 10
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    aget-byte p3, p3, v4

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    goto :goto_0

    .line 11
    :cond_1
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    aget-byte p3, p3, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 12
    :goto_0
    invoke-virtual {p1, p2, p0}, Lkg/j;->i2(II)Lkg/j;

    return v3

    .line 13
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v7, :cond_3

    .line 15
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    .line 16
    :cond_3
    aget-byte v2, p3, v2

    .line 17
    aget-byte v4, p3, v4

    .line 18
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x16

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xfc

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    :goto_1
    or-int/2addr p0, v0

    .line 19
    invoke-virtual {p1, p2, p0}, Lkg/j;->h2(II)Lkg/j;

    return v1

    .line 20
    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lez p1, :cond_2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->c:[B

    aget-byte v1, v0, p1

    const/4 v2, -0x5

    if-lt v1, v2, :cond_2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->a:[B

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->b:I

    aput-byte p1, v1, v2

    const/4 v2, 0x3

    if-le v4, v2, :cond_1

    .line 3
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->d:I

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->e:Lkg/j;

    invoke-static {v1, v4, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->c([BLkg/j;I[B)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->d:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->b:I

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Base64 input character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (decimal)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Lkg/j;IILkg/k;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 1

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->i(I)I

    move-result v0

    invoke-interface {p4, v0}, Lkg/k;->l(I)Lkg/j;

    move-result-object p4

    invoke-virtual {p1}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p4, v0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p4

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->e:Lkg/j;

    .line 2
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object p4

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->c:[B

    .line 3
    :try_start_0
    invoke-virtual {p1, p2, p3, p0}, Lkg/j;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->e:Lkg/j;

    const/4 p2, 0x0

    iget p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->d:I

    invoke-virtual {p1, p2, p3}, Lkg/j;->n2(II)Lkg/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->e:Lkg/j;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
