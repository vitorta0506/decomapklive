.class public final Lkg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg/n$e;,
        Lkg/n$f;,
        Lkg/n$c;,
        Lkg/n$d;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field static final f:Lkg/k;

.field private static final g:Lio/grpc/netty/shaded/io/netty/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lkg/n;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lkg/n;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v1, Lkg/n$a;

    invoke-direct {v1}, Lkg/n$a;-><init>()V

    sput-object v1, Lkg/n;->b:Lug/n;

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/h;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lkg/n;->e:I

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c0()Z

    move-result v1

    const-string v2, "unpooled"

    const-string v3, "pooled"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "io.grpc.netty.shaded.io.netty.allocator.type"

    .line 6
    invoke-static {v4, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "-Dio.netty.allocator.type: {}"

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Lkg/t0;->g:Lkg/t0;

    .line 10
    invoke-interface {v0, v4, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    sget-object v2, Lkg/d0;->A:Lkg/d0;

    .line 13
    invoke-interface {v0, v4, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object v2, Lkg/d0;->A:Lkg/d0;

    const-string v3, "-Dio.netty.allocator.type: pooled (unknown: {})"

    .line 15
    invoke-interface {v0, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :goto_1
    sput-object v2, Lkg/n;->f:Lkg/k;

    const/4 v1, 0x0

    const-string v2, "io.grpc.netty.shaded.io.netty.threadLocalDirectBufferSize"

    .line 17
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lkg/n;->d:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalDirectBufferSize: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x4000

    const-string v2, "io.grpc.netty.shaded.io.netty.maxThreadLocalCharBufferSize"

    .line 19
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lkg/n;->c:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.maxThreadLocalCharBufferSize: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lkg/n$b;

    invoke-direct {v0}, Lkg/n$b;-><init>()V

    sput-object v0, Lkg/n;->g:Lio/grpc/netty/shaded/io/netty/util/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A(Lkg/a;IIB)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, -0x1

    if-ltz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p1, p2

    .line 3
    invoke-virtual {p0, p2, v0}, Lkg/a;->f3(II)V

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-lt p1, p2, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result v0

    if-ne v0, p3, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static B(Lkg/a;IIB)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result v0

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static C(Lkg/j;IIZ)J
    .locals 9

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    add-int v4, p2, v2

    if-ge v4, p1, :cond_5

    .line 1
    invoke-virtual {p0, v4}, Lkg/j;->u0(I)B

    move-result v5

    add-int v6, v1, v2

    .line 2
    invoke-virtual {p0, v6}, Lkg/j;->u0(I)B

    move-result v6

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    if-ge v5, v6, :cond_1

    goto :goto_1

    :cond_0
    if-le v5, v6, :cond_1

    :goto_1
    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    sub-int v3, v4, v1

    move p2, v4

    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v6, :cond_4

    if-eq v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr p2, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_0

    :cond_5
    int-to-long p0, v1

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long p2, v3

    add-long/2addr p0, p2

    return-wide p0
.end method

.method static D(Lkg/k;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p4, p0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x2000

    .line 3
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 p2, 0x400

    if-le p3, p2, :cond_2

    .line 5
    invoke-interface {p0}, Lkg/k;->e()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0, v4}, Lkg/k;->b(I)Lkg/j;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lkg/j;->z()I

    move-result v3

    move-object v1, p1

    move-object v5, p4

    move v6, p3

    .line 9
    invoke-static/range {v1 .. v6}, Lkg/n;->q(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 11
    throw p1

    .line 12
    :cond_2
    :goto_0
    invoke-static {v4}, Lkg/n;->O(I)[B

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lkg/n;->q(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V

    :goto_1
    return-void
.end method

.method private static E(Lkg/j;Ljava/lang/CharSequence;III)I
    .locals 7

    .line 1
    :goto_0
    instance-of v0, p0, Lkg/g1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lkg/a;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lkg/a;

    .line 5
    invoke-virtual {p0, p4}, Lkg/a;->q3(I)V

    .line 6
    iget v2, p0, Lkg/a;->b:I

    move-object v1, p0

    move v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lkg/n;->d0(Lkg/a;IILjava/lang/CharSequence;II)I

    move-result p1

    .line 7
    iget p2, p0, Lkg/a;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->b:I

    return p1

    .line 8
    :cond_1
    instance-of v0, p0, Lkg/f1;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lkg/j;->A2([B)Lkg/j;

    .line 12
    array-length p0, p1

    return p0
.end method

.method private static F([BILjava/lang/CharSequence;II)I
    .locals 6

    move v0, p1

    :goto_0
    if-ge p3, p4, :cond_7

    .line 1
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    move v0, v2

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0x800

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 3
    aput-byte v4, p0, v0

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v3

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->j(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_6

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 7
    aput-byte v4, p0, v0

    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ne p3, p4, :cond_3

    add-int/lit8 p2, v0, 0x1

    .line 8
    aput-byte v4, p0, v0

    move v0, p2

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 11
    aput-byte v4, p0, v0

    add-int/lit8 v0, v1, 0x1

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    int-to-byte v2, v4

    aput-byte v2, p0, v1

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 14
    aput-byte v5, p0, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 15
    aput-byte v5, p0, v3

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p0, v0

    add-int/lit8 v0, v3, 0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 17
    aput-byte v1, p0, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 18
    aput-byte v5, p0, v0

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 19
    aput-byte v4, p0, v3

    add-int/lit8 v3, v0, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 20
    aput-byte v1, p0, v0

    move v0, v3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    sub-int/2addr v0, p1

    return v0
.end method

.method private static G(Ljava/nio/ByteBuffer;ILjava/lang/CharSequence;II)I
    .locals 6

    move v0, p1

    :goto_0
    if-ge p3, p4, :cond_7

    .line 1
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v2

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0x800

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 3
    invoke-virtual {p0, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->j(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_6

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 7
    invoke-virtual {p0, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ne p3, p4, :cond_3

    add-int/lit8 p2, v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, p2

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 11
    invoke-virtual {p0, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v1, 0x1

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    int-to-byte v4, v3

    :goto_1
    invoke-virtual {p0, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 14
    invoke-virtual {p0, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 15
    invoke-virtual {p0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 16
    invoke-virtual {p0, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 17
    invoke-virtual {p0, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 18
    invoke-virtual {p0, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 19
    invoke-virtual {p0, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v0, v3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    sub-int/2addr v0, p1

    return v0
.end method

.method private static H(Lkg/a;ILjava/lang/CharSequence;II)I
    .locals 6

    move v0, p1

    :goto_0
    if-ge p3, p4, :cond_7

    .line 1
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lkg/a;->U2(II)V

    move v0, v2

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0x800

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    .line 3
    invoke-virtual {p0, v0, v4}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 4
    invoke-virtual {p0, v3, v1}, Lkg/a;->U2(II)V

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->j(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_6

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 7
    invoke-virtual {p0, v0, v4}, Lkg/a;->U2(II)V

    move v0, v1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ne p3, p4, :cond_3

    add-int/lit8 p2, v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v4}, Lkg/a;->U2(II)V

    move v0, p2

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 11
    invoke-virtual {p0, v0, v4}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v1, 0x1

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {p0, v1, v4}, Lkg/a;->U2(II)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 14
    invoke-virtual {p0, v0, v5}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 15
    invoke-virtual {p0, v3, v5}, Lkg/a;->U2(II)V

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 16
    invoke-virtual {p0, v0, v5}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v3, 0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 17
    invoke-virtual {p0, v3, v1}, Lkg/a;->U2(II)V

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 18
    invoke-virtual {p0, v0, v5}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    .line 19
    invoke-virtual {p0, v3, v4}, Lkg/a;->U2(II)V

    add-int/lit8 v3, v0, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 20
    invoke-virtual {p0, v0, v1}, Lkg/a;->U2(II)V

    move v0, v3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    sub-int/2addr v0, p1

    return v0
.end method

.method public static I(Lkg/j;II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    int-to-short p2, p2

    .line 2
    invoke-static {p2}, Lkg/n;->M(S)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static J(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static K(J)J
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static L(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static M(S)S
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    return p0
.end method

.method public static N()Lkg/j;
    .locals 1

    .line 1
    sget v0, Lkg/n;->d:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lkg/n$f;->O3()Lkg/n$f;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lkg/n$e;->N3()Lkg/n$e;

    move-result-object v0

    return-object v0
.end method

.method static O(I)[B
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    .line 1
    sget-object p0, Lkg/n;->b:Lug/n;

    invoke-virtual {p0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static P(J)J
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    return-wide p0
.end method

.method private static Q(Lkg/a;IIB)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result v0

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkg/a;->M2(I)B

    move-result v2

    if-ne v2, p3, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, p1, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lkg/a;->M2(I)B

    move-result v2

    if-ne v2, p3, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, p1, 0x3

    .line 4
    invoke-virtual {p0, v0}, Lkg/a;->M2(I)B

    move-result v2

    if-ne v2, p3, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, p1, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lkg/a;->M2(I)B

    move-result v2

    if-ne v2, p3, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_9

    return v1

    :cond_9
    add-int/lit8 v0, p1, 0x5

    .line 6
    invoke-virtual {p0, v0}, Lkg/a;->M2(I)B

    move-result v2

    if-ne v2, p3, :cond_a

    return v0

    :cond_a
    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    return v1

    :cond_b
    add-int/2addr p1, v0

    .line 7
    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result p0

    if-ne p0, p3, :cond_c

    return p1

    :cond_c
    return v1
.end method

.method private static R([BJILjava/lang/CharSequence;II)I
    .locals 9

    int-to-long v0, p3

    add-long/2addr p1, v0

    move-wide v0, p1

    :goto_0
    if-ge p5, p6, :cond_7

    .line 1
    invoke-interface {p4, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    if-ge p3, v2, :cond_0

    add-long/2addr v3, v0

    int-to-byte p3, p3

    .line 2
    invoke-static {p0, v0, v1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    :goto_1
    move-wide v0, v3

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x800

    if-ge p3, v5, :cond_1

    add-long v5, v0, v3

    shr-int/lit8 v7, p3, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 3
    invoke-static {p0, v0, v1, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long/2addr v3, v5

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v2

    int-to-byte p3, p3

    .line 4
    invoke-static {p0, v5, v6, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->j(C)Z

    move-result v5

    const/16 v6, 0x3f

    if-eqz v5, :cond_6

    .line 6
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-long/2addr v3, v0

    .line 7
    invoke-static {p0, v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    if-ne p5, p6, :cond_3

    add-long/2addr v3, v0

    .line 8
    invoke-static {p0, v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    move-wide v0, v3

    goto :goto_4

    .line 9
    :cond_3
    invoke-interface {p4, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_5

    add-long v7, v0, v3

    .line 11
    invoke-static {p0, v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long/2addr v3, v7

    .line 12
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    int-to-byte p3, v6

    .line 13
    invoke-static {p0, v7, v8, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {p3, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    add-long v7, v0, v3

    shr-int/lit8 v5, p3, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 15
    invoke-static {p0, v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long v0, v7, v3

    shr-int/lit8 v5, p3, 0xc

    and-int/2addr v5, v6

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 16
    invoke-static {p0, v7, v8, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long v7, v0, v3

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 17
    invoke-static {p0, v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long/2addr v3, v7

    and-int/2addr p3, v6

    or-int/2addr p3, v2

    int-to-byte p3, p3

    .line 18
    invoke-static {p0, v7, v8, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_6
    add-long v7, v0, v3

    shr-int/lit8 v5, p3, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 19
    invoke-static {p0, v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long v0, v7, v3

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 20
    invoke-static {p0, v7, v8, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    add-long/2addr v3, v0

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v2

    int-to-byte p3, p3

    .line 21
    invoke-static {p0, v0, v1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E0(Ljava/lang/Object;JB)V

    goto/16 :goto_1

    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    sub-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private static S(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int p1, v0, p1

    if-ge v0, p2, :cond_2

    .line 3
    invoke-static {p0, v0, p2}, Lkg/n;->U(Ljava/lang/CharSequence;II)I

    move-result p0

    add-int/2addr p1, p0

    :cond_2
    return p1
.end method

.method public static T(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lkg/n;->S(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static U(Ljava/lang/CharSequence;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_5

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x800

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v1, v1, 0x7f

    ushr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->j(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x3

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public static V(I)I
    .locals 1

    sget v0, Lkg/n;->e:I

    mul-int p0, p0, v0

    return p0
.end method

.method public static W(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p0}, Lkg/n;->V(I)I

    move-result p0

    return p0
.end method

.method static X(Lkg/a;ILjava/lang/CharSequence;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/c;->e(C)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static Y(Lkg/j;Ljava/lang/CharSequence;)I
    .locals 3

    .line 1
    :goto_0
    instance-of v0, p0, Lkg/g1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lkg/a;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5
    check-cast p0, Lkg/a;

    .line 6
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 7
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v1, :cond_1

    .line 8
    iget v1, p0, Lkg/a;->b:I

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Lkg/n;->Z(Lkg/a;ILio/grpc/netty/shaded/io/netty/util/c;II)V

    goto :goto_1

    .line 9
    :cond_1
    iget v1, p0, Lkg/a;->b:I

    invoke-static {p0, v1, p1, v0}, Lkg/n;->X(Lkg/a;ILjava/lang/CharSequence;I)I

    .line 10
    :goto_1
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return v0

    .line 11
    :cond_2
    instance-of v0, p0, Lkg/f1;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lkg/j;->A2([B)Lkg/j;

    .line 15
    array-length p0, p1

    return p0
.end method

.method static Z(Lkg/a;ILio/grpc/netty/shaded/io/netty/util/c;II)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v0

    add-int v2, v0, p3

    sub-int/2addr p4, p3

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object v3

    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int v4, p0, p1

    int-to-long v5, p4

    .line 6
    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r([BI[BIJ)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lkg/j;->b1()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lkg/j;->p1()J

    move-result-wide p2

    int-to-long p0, p1

    add-long v3, p2, p0

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q([BIJJ)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object p2

    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object p3

    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p2, v2, p3, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lkg/n;->d:I

    return v0
.end method

.method public static a0(Lkg/j;I)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lkg/j;->H2(I)Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lkg/n;->L(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lkg/j;->H2(I)Lkg/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Lkg/j;Lkg/j;)I
    .locals 11

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v2

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    ushr-int/lit8 v4, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    .line 4
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v6

    if-lez v4, :cond_6

    .line 6
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_1

    const/4 v0, 0x1

    :cond_1
    shl-int/lit8 v4, v4, 0x2

    .line 7
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {p1}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v8

    if-ne v7, v8, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p0, p1, v5, v6, v4}, Lkg/n;->c(Lkg/j;Lkg/j;III)J

    move-result-wide v7

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0, p1, v5, v6, v4}, Lkg/n;->f(Lkg/j;Lkg/j;III)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0, p1, v5, v6, v4}, Lkg/n;->d(Lkg/j;Lkg/j;III)J

    move-result-wide v7

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p0, p1, v5, v6, v4}, Lkg/n;->e(Lkg/j;Lkg/j;III)J

    move-result-wide v7

    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_5

    const-wide/32 p0, 0x7fffffff

    const-wide/32 v0, -0x80000000

    .line 12
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1

    :cond_5
    add-int/2addr v5, v4

    add-int/2addr v6, v4

    :cond_6
    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_8

    .line 13
    invoke-virtual {p0, v5}, Lkg/j;->R0(I)S

    move-result v0

    invoke-virtual {p1, v6}, Lkg/j;->R0(I)S

    move-result v4

    sub-int/2addr v0, v4

    if-eqz v0, :cond_7

    return v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    sub-int/2addr v1, v2

    return v1
.end method

.method public static b0(Lkg/j;I)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lkg/j;->I2(I)Lkg/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    int-to-short p1, p1

    .line 2
    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lkg/j;->I2(I)Lkg/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static c(Lkg/j;Lkg/j;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lkg/j;->S0(I)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lkg/j;->S0(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method static c0(Lkg/a;IILjava/lang/CharSequence;I)I
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lkg/n;->d0(Lkg/a;IILjava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static d(Lkg/j;Lkg/j;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    .line 1
    invoke-virtual {p0, p2}, Lkg/j;->S0(I)J

    move-result-wide v2

    .line 2
    invoke-virtual {p1, p3}, Lkg/j;->T0(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkg/n;->P(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method static d0(Lkg/a;IILjava/lang/CharSequence;II)I
    .locals 7

    .line 1
    instance-of v0, p3, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p3, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-static {p0, p1, p3, p4, p5}, Lkg/n;->Z(Lkg/a;ILio/grpc/netty/shaded/io/netty/util/c;II)V

    sub-int/2addr p5, p4

    return p5

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l()J

    move-result-wide v1

    .line 6
    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int v3, p0, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 7
    invoke-static/range {v0 .. v6}, Lkg/n;->R([BJILjava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lkg/j;->b1()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0}, Lkg/j;->p1()J

    move-result-wide v1

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lkg/n;->R([BJILjava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object p2

    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p2, p0, p3, p4, p5}, Lkg/n;->F([BILjava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lkg/j;->h1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, p1, p2}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 15
    invoke-static {p0, p1, p3, p4, p5}, Lkg/n;->G(Ljava/nio/ByteBuffer;ILjava/lang/CharSequence;II)I

    move-result p0

    return p0

    .line 16
    :cond_4
    invoke-static {p0, p1, p3, p4, p5}, Lkg/n;->H(Lkg/a;ILjava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static e(Lkg/j;Lkg/j;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    .line 1
    invoke-virtual {p0, p2}, Lkg/j;->T0(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkg/n;->P(J)J

    move-result-wide v2

    .line 2
    invoke-virtual {p1, p3}, Lkg/j;->S0(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static e0(Lkg/j;Ljava/lang/CharSequence;)I
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Lkg/n;->V(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lkg/n;->E(Lkg/j;Ljava/lang/CharSequence;III)I

    move-result p0

    return p0
.end method

.method private static f(Lkg/j;Lkg/j;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lkg/j;->T0(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkg/n;->P(J)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lkg/j;->T0(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkg/n;->P(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static f0(Lkg/k;Ljava/lang/CharSequence;)Lkg/j;
    .locals 1

    .line 1
    invoke-static {p1}, Lkg/n;->W(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Lkg/k;->l(I)Lkg/j;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lkg/n;->e0(Lkg/j;Ljava/lang/CharSequence;)I

    return-object p0
.end method

.method public static g(Lio/grpc/netty/shaded/io/netty/util/c;ILkg/j;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    invoke-static {p1, p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dst"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkg/j;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, v0, p1, p3}, Lkg/j;->B2([BII)Lkg/j;

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: 0 <= srcIdx("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcIdx + length("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcLen("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static h(Lio/grpc/netty/shaded/io/netty/util/c;ILkg/j;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dst"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkg/j;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, p3, v0, p1, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expected: 0 <= srcIdx("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcIdx + length("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= srcLen("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static i(Lio/grpc/netty/shaded/io/netty/util/c;Lkg/j;)V
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lkg/n;->g(Lio/grpc/netty/shaded/io/netty/util/c;ILkg/j;I)V

    return-void
.end method

.method static j(Lkg/j;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Lkg/n;->O(I)[B

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lkg/j;->E0(I[BII)Lkg/j;

    const/4 p0, 0x0

    .line 6
    :goto_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1
.end method

.method static k(Lkg/k;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lkg/j;
    .locals 4

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/h;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    .line 2
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p4

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Lkg/k;->b(I)Lkg/j;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0, v0}, Lkg/k;->l(I)Lkg/j;

    move-result-object p0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, p2, p1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 10
    :cond_1
    invoke-virtual {p3, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p3

    if-nez p3, :cond_2

    .line 12
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p2, p4

    invoke-virtual {p0, p2}, Lkg/j;->L2(I)Lkg/j;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 16
    throw p1
.end method

.method public static l(Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/j;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result p0

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0
.end method

.method public static m(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static n(Lkg/j;ILkg/j;II)Z
    .locals 7

    const-string v0, "a"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "b"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "aStartIndex"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v0, "bStartIndex"

    .line 4
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v0, "length"

    .line 5
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-lt v0, p1, :cond_7

    invoke-virtual {p2}, Lkg/j;->K2()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_0

    goto :goto_3

    :cond_0
    ushr-int/lit8 v0, p4, 0x3

    and-int/lit8 p4, p4, 0x7

    .line 7
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p0, p1}, Lkg/j;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, p3}, Lkg/j;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lkg/j;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, p3}, Lkg/j;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkg/n;->K(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez p4, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Lkg/j;->u0(I)B

    move-result v0

    invoke-virtual {p2, p3}, Lkg/j;->u0(I)B

    move-result v2

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    return v1
.end method

.method public static o(Lkg/j;Lkg/j;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lkg/n;->n(Lkg/j;ILkg/j;II)Z

    move-result p0

    return p0
.end method

.method static p(Lkg/a;IIB)I
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ge p1, p2, :cond_8

    .line 2
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    sub-int v2, p2, p1

    .line 3
    invoke-virtual {p0, p1, v2}, Lkg/a;->f3(II)V

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i0()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lkg/n;->B(Lkg/a;IIB)I

    move-result p0

    return p0

    :cond_1
    and-int/lit8 v3, v2, 0x7

    if-lez v3, :cond_3

    .line 6
    invoke-static {p0, p1, v3, p3}, Lkg/n;->Q(Lkg/a;IIB)I

    move-result v4

    if-eq v4, v1, :cond_2

    return v4

    :cond_2
    add-int/2addr p1, v3

    if-ne p1, p2, :cond_3

    return v1

    :cond_3
    ushr-int/lit8 p2, v2, 0x3

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 9
    :goto_0
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 10
    :goto_1
    invoke-static {p3}, Lkg/n$d;->a(B)J

    move-result-wide v5

    :goto_2
    if-ge v0, p2, :cond_8

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {p0, p1}, Lkg/a;->Q2(I)J

    move-result-wide v7

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lkg/a;->P2(I)J

    move-result-wide v7

    .line 12
    :goto_3
    invoke-static {v7, v8, v5, v6, v3}, Lkg/n$d;->b(JJZ)I

    move-result p3

    const/16 v2, 0x8

    if-ge p3, v2, :cond_7

    add-int/2addr p1, p3

    return p1

    :cond_7
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return v1
.end method

.method private static q(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p4, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p5, v0

    if-gtz p5, :cond_0

    return-void
.end method

.method public static r(Lkg/j;)[B
    .locals 2

    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-static {p0, v0, v1}, Lkg/n;->s(Lkg/j;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static s(Lkg/j;II)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lkg/n;->t(Lkg/j;IIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static t(Lkg/j;IIZ)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    .line 2
    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkg/j;->z()I

    move-result v0

    add-int/2addr v0, p1

    .line 5
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object p0

    if-nez p3, :cond_1

    if-nez v0, :cond_1

    .line 6
    array-length p1, p0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    add-int/2addr p2, v0

    .line 7
    invoke-static {p0, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lkg/j;->C0(I[B)Lkg/j;

    return-object p2

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: 0 <= start("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= start + length("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") <= buf.capacity("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Lkg/j;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    .line 2
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 4
    invoke-virtual {p0, v2}, Lkg/j;->getInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 5
    invoke-virtual {p0, v2}, Lkg/j;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lkg/n;->J(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v0, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    add-int/lit8 v1, v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Lkg/j;->u0(I)B

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    return v5
.end method

.method public static v(Lkg/j;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-static {p0, v0, v1}, Lkg/n;->w(Lkg/j;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lkg/j;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lkg/n$c;->a(Lkg/j;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x([BII)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lkg/n$c;->b([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lkg/j;Lkg/j;)I
    .locals 14

    const/4 v0, -0x1

    if-eqz p1, :cond_f

    if-nez p0, :cond_0

    goto/16 :goto_7

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 4
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v2

    invoke-virtual {p0, v2}, Lkg/j;->u0(I)B

    move-result p0

    .line 6
    invoke-virtual {p1, v0, v1, p0}, Lkg/j;->d1(IIB)I

    move-result p0

    return p0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v5

    .line 8
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v6

    .line 9
    invoke-static {p0, v2, v5, v4}, Lkg/n;->C(Lkg/j;IIZ)J

    move-result-wide v7

    .line 10
    invoke-static {p0, v2, v5, v3}, Lkg/n;->C(Lkg/j;IIZ)J

    move-result-wide v9

    const/16 v11, 0x20

    shr-long v12, v7, v11

    long-to-int v13, v12

    shr-long v11, v9, v11

    long-to-int v12, v11

    .line 11
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    long-to-int v8, v7

    long-to-int v7, v9

    .line 12
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v8, v2, v7

    add-int/lit8 v9, v11, 0x1

    .line 13
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v12, v5, v7

    .line 14
    invoke-static {p0, v5, p0, v12, v10}, Lkg/n;->n(Lkg/j;ILkg/j;II)Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_0
    const/4 v9, -0x1

    :goto_1
    sub-int v10, v1, v2

    if-gt v3, v10, :cond_f

    .line 15
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v4

    :goto_2
    if-ge v10, v2, :cond_4

    add-int v12, v10, v5

    .line 16
    invoke-virtual {p0, v12}, Lkg/j;->u0(I)B

    move-result v12

    add-int v13, v10, v3

    add-int/2addr v13, v6

    invoke-virtual {p1, v13}, Lkg/j;->u0(I)B

    move-result v13

    if-ne v12, v13, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-le v10, v1, :cond_5

    return v0

    :cond_5
    if-lt v10, v2, :cond_8

    move v10, v11

    :goto_3
    if-le v10, v9, :cond_6

    add-int v12, v10, v5

    .line 17
    invoke-virtual {p0, v12}, Lkg/j;->u0(I)B

    move-result v12

    add-int v13, v10, v3

    add-int/2addr v13, v6

    invoke-virtual {p1, v13}, Lkg/j;->u0(I)B

    move-result v13

    if-ne v12, v13, :cond_6

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_6
    if-gt v10, v9, :cond_7

    return v3

    :cond_7
    add-int/2addr v3, v7

    add-int/lit8 v9, v8, -0x1

    goto :goto_1

    :cond_8
    sub-int/2addr v10, v11

    add-int/2addr v3, v10

    goto :goto_0

    :cond_9
    sub-int v7, v2, v11

    sub-int/2addr v7, v4

    .line 18
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v4

    :goto_4
    sub-int v4, v1, v2

    if-gt v3, v4, :cond_f

    move v4, v9

    :goto_5
    if-ge v4, v2, :cond_a

    add-int v8, v4, v5

    .line 19
    invoke-virtual {p0, v8}, Lkg/j;->u0(I)B

    move-result v8

    add-int v10, v4, v3

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, Lkg/j;->u0(I)B

    move-result v10

    if-ne v8, v10, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    if-le v4, v1, :cond_b

    return v0

    :cond_b
    if-lt v4, v2, :cond_e

    move v4, v11

    :goto_6
    if-ltz v4, :cond_c

    add-int v8, v4, v5

    .line 20
    invoke-virtual {p0, v8}, Lkg/j;->u0(I)B

    move-result v8

    add-int v10, v4, v3

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, Lkg/j;->u0(I)B

    move-result v10

    if-ne v8, v10, :cond_c

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_c
    if-gez v4, :cond_d

    return v3

    :cond_d
    add-int/2addr v3, v7

    goto :goto_4

    :cond_e
    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    goto :goto_4

    :cond_f
    :goto_7
    return v0
.end method

.method public static z(Lkg/j;)Z
    .locals 0

    invoke-virtual {p0}, Lkg/j;->f1()Z

    move-result p0

    return p0
.end method
