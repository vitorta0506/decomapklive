.class public abstract Lkg/a;
.super Lkg/j;
.source "SourceFile"


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field static final g:Z

.field private static final h:Z

.field static final i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "Lkg/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lkg/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lkg/a;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "io.grpc.netty.shaded.io.netty.buffer.checkAccessible"

    .line 2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lkg/a;->g:Z

    goto :goto_0

    :cond_0
    const-string v2, "io.grpc.netty.shaded.io.netty.buffer.bytebuf.checkAccessible"

    .line 4
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lkg/a;->g:Z

    :goto_0
    const-string v2, "io.grpc.netty.shaded.io.netty.buffer.checkBounds"

    .line 5
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lkg/a;->h:Z

    .line 6
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    sget-boolean v4, Lkg/a;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "-D{}: {}"

    invoke-interface {v0, v5, v1, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v5, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->b()Lio/grpc/netty/shaded/io/netty/util/t;

    move-result-object v0

    const-class v1, Lkg/j;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/t;->c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkg/j;-><init>()V

    const-string v0, "maxCapacity"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 3
    iput p1, p0, Lkg/a;->e:I

    return-void
.end method

.method private static h3(III)V
    .locals 3

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "readerIndex: %d, writerIndex: %d (expected: 0 <= readerIndex <= writerIndex <= capacity(%d))"

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j3(Ljava/lang/String;III)V
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s: %d, length: %d (expected: range(0, %d))"

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static k3(Lkg/j;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "length(%d) exceeds src.readableBytes(%d) where src is: %s"

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m3(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lkg/a;->a:I

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lkg/a;->a:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    iget v2, p0, Lkg/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const-string p1, "readerIndex(%d) + length(%d) exceeds writerIndex(%d): %s"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private x3(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lkg/n;->W(Ljava/lang/CharSequence;)I

    move-result p3

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Lkg/a;->q3(I)V

    .line 4
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p0, p1, p3, p2, p4}, Lkg/n;->c0(Lkg/a;IILjava/lang/CharSequence;I)I

    move-result p1

    return p1

    .line 7
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    if-eqz p4, :cond_3

    .line 9
    array-length p3, p2

    invoke-virtual {p0, p3}, Lkg/a;->q3(I)V

    .line 10
    :cond_3
    invoke-virtual {p0, p1, p2}, Lkg/a;->w3(I[B)Lkg/j;

    .line 11
    array-length p1, p2

    return p1

    .line 12
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eqz p4, :cond_5

    .line 13
    invoke-virtual {p0, p3}, Lkg/a;->q3(I)V

    .line 14
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    .line 16
    :goto_2
    invoke-static {p0, p1, p2, p3}, Lkg/n;->X(Lkg/a;ILjava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0, p1, p2}, Lkg/j;->w0(ILjava/io/OutputStream;I)Lkg/j;

    .line 3
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public A2([B)Lkg/j;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkg/a;->B2([BII)Lkg/j;

    return-object p0
.end method

.method public B()Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lkg/s0;->h(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lkg/a;->l3(I)V

    .line 3
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1, p1}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    .line 4
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public B2([BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lkg/j;->b2(I[BII)Lkg/j;

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public C0(I[B)Lkg/j;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkg/j;->E0(I[BII)Lkg/j;

    return-object p0
.end method

.method public C1([B)Lkg/j;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkg/a;->D1([BII)Lkg/j;

    return-object p0
.end method

.method public C2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/a;->I2(I)Lkg/j;

    return-object p0
.end method

.method public D1([BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lkg/j;->E0(I[BII)Lkg/j;

    .line 3
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 2

    .line 1
    iget v0, p0, Lkg/a;->b:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lkg/a;->x3(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I

    move-result p1

    .line 2
    iget p2, p0, Lkg/a;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->b:I

    return p1
.end method

.method public E1()I
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1}, Lkg/a;->N2(I)I

    move-result v1

    .line 3
    iget v2, p0, Lkg/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lkg/a;->a:I

    return v1
.end method

.method public E2(I)Lkg/j;
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1}, Lkg/a;->V2(II)V

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public F0(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->O2(I)I

    move-result p1

    return p1
.end method

.method public F1()I
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1}, Lkg/a;->O2(I)I

    move-result v1

    .line 3
    iget v2, p0, Lkg/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lkg/a;->a:I

    return v1
.end method

.method public F2(I)Lkg/j;
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1}, Lkg/a;->W2(II)V

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public G0(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public G1()J
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1}, Lkg/a;->P2(I)J

    move-result-wide v1

    .line 3
    iget v3, p0, Lkg/a;->a:I

    add-int/2addr v3, v0

    iput v3, p0, Lkg/a;->a:I

    return-wide v1
.end method

.method public G2(J)Lkg/j;
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1, p2}, Lkg/a;->X2(IJ)V

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public H0(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkg/a;->X0(I)I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public H1()I
    .locals 2

    invoke-virtual {p0}, Lkg/a;->N1()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public H2(I)Lkg/j;
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1}, Lkg/a;->Y2(II)V

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public I1(I)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0, p1}, Lkg/a;->v3(II)Lkg/j;

    move-result-object v0

    .line 3
    iget v1, p0, Lkg/a;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lkg/a;->a:I

    return-object v0
.end method

.method public I2(I)Lkg/j;
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1}, Lkg/a;->Z2(II)V

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public J1()S
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1}, Lkg/a;->R2(I)S

    move-result v1

    .line 3
    iget v2, p0, Lkg/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lkg/a;->a:I

    return v1
.end method

.method public J2(I)Lkg/j;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    .line 3
    invoke-virtual {p0, v0, p1}, Lkg/a;->g3(II)V

    ushr-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    :goto_0
    if-lez v1, :cond_1

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v2, v3}, Lkg/a;->X2(IJ)V

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 5
    invoke-virtual {p0, v0, v1}, Lkg/a;->V2(II)V

    add-int/2addr v0, v2

    goto :goto_3

    :cond_2
    if-ge p1, v2, :cond_3

    :goto_1
    if-lez p1, :cond_4

    .line 6
    invoke-virtual {p0, v0, v1}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0, v0, v1}, Lkg/a;->V2(II)V

    add-int/2addr v0, v2

    sub-int/2addr p1, v2

    :goto_2
    if-lez p1, :cond_4

    .line 8
    invoke-virtual {p0, v0, v1}, Lkg/a;->U2(II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 9
    :cond_4
    :goto_3
    iput v0, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public K1(I)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0, p1}, Lkg/a;->n2(II)Lkg/j;

    move-result-object v0

    .line 3
    iget v1, p0, Lkg/a;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lkg/a;->a:I

    return-object v0
.end method

.method public K2()I
    .locals 1

    iget v0, p0, Lkg/a;->b:I

    return v0
.end method

.method public L()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkg/a;->b:I

    iput v0, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public L1()S
    .locals 1

    invoke-virtual {p0}, Lkg/a;->x1()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public L2(I)Lkg/j;
    .locals 2

    .line 1
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    invoke-static {v0, p1, v1}, Lkg/a;->h3(III)V

    .line 3
    :cond_0
    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public M(Lkg/j;)I
    .locals 0

    invoke-static {p0, p1}, Lkg/n;->b(Lkg/j;Lkg/j;)I

    move-result p1

    return p1
.end method

.method public M1()J
    .locals 4

    invoke-virtual {p0}, Lkg/a;->E1()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected abstract M2(I)B
.end method

.method public N()Lkg/j;
    .locals 2

    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/j;->Q(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public N1()I
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {p0, v1}, Lkg/a;->T2(I)I

    move-result v1

    .line 3
    iget v2, p0, Lkg/a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lkg/a;->a:I

    return v1
.end method

.method protected abstract N2(I)I
.end method

.method public O1()I
    .locals 2

    invoke-virtual {p0}, Lkg/a;->J1()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected abstract O2(I)I
.end method

.method public P0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->R2(I)S

    move-result p1

    return p1
.end method

.method public P1()I
    .locals 2

    iget v0, p0, Lkg/a;->b:I

    iget v1, p0, Lkg/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract P2(I)J
.end method

.method public Q0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->S2(I)S

    move-result p1

    return p1
.end method

.method public Q1()I
    .locals 1

    iget v0, p0, Lkg/a;->a:I

    return v0
.end method

.method protected abstract Q2(I)J
.end method

.method public R0(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lkg/a;->u0(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public R1(I)Lkg/j;
    .locals 2

    .line 1
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lkg/a;->b:I

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    invoke-static {p1, v0, v1}, Lkg/a;->h3(III)V

    .line 3
    :cond_0
    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method protected abstract R2(I)S
.end method

.method public S0(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lkg/a;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public S1()Lkg/j;
    .locals 1

    iget v0, p0, Lkg/a;->c:I

    invoke-virtual {p0, v0}, Lkg/a;->R1(I)Lkg/j;

    return-object p0
.end method

.method protected abstract S2(I)S
.end method

.method public T0(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lkg/a;->F0(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected abstract T2(I)I
.end method

.method protected abstract U2(II)V
.end method

.method public V1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/a;->f0()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method protected abstract V2(II)V
.end method

.method public W1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/a;->m2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method protected abstract W2(II)V
.end method

.method public X0(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->U2(II)V

    return-object p0
.end method

.method protected abstract X2(IJ)V
.end method

.method public Y0(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkg/a;->P0(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method protected abstract Y2(II)V
.end method

.method protected abstract Z2(II)V
.end method

.method protected abstract a3(II)V
.end method

.method protected final b3(I)V
    .locals 2

    .line 1
    iget v0, p0, Lkg/a;->c:I

    if-gt v0, p1, :cond_1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkg/a;->c:I

    .line 3
    iget v1, p0, Lkg/a;->d:I

    if-gt v1, p1, :cond_0

    .line 4
    iput v0, p0, Lkg/a;->d:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 5
    iput v1, p0, Lkg/a;->d:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    .line 6
    iput v0, p0, Lkg/a;->c:I

    .line 7
    iget v0, p0, Lkg/a;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lkg/a;->d:I

    :goto_0
    return-void
.end method

.method public c0()Lkg/j;
    .locals 3

    .line 1
    iget v0, p0, Lkg/a;->a:I

    if-lez v0, :cond_1

    .line 2
    iget v1, p0, Lkg/a;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 4
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0}, Lkg/a;->b3(I)V

    .line 5
    iput v2, p0, Lkg/a;->a:I

    iput v2, p0, Lkg/a;->b:I

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1

    .line 7
    iget v0, p0, Lkg/a;->a:I

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v2, p0, v0, v1}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    .line 8
    iget v0, p0, Lkg/a;->b:I

    iget v1, p0, Lkg/a;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lkg/a;->b:I

    .line 9
    invoke-virtual {p0, v1}, Lkg/a;->b3(I)V

    .line 10
    iput v2, p0, Lkg/a;->a:I

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lkg/a;->p3()V

    return-object p0
.end method

.method public c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkg/a;->x3(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;Z)I

    move-result p1

    return p1
.end method

.method protected final c3(III)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->l3(I)V

    .line 2
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "dstIndex"

    .line 3
    invoke-static {v0, p2, p1, p3}, Lkg/a;->j3(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lkg/a;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public d1(IIB)I
    .locals 0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkg/n;->p(Lkg/a;IIB)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkg/n;->A(Lkg/a;IIB)I

    move-result p1

    return p1
.end method

.method public d2(II)Lkg/j;
    .locals 1

    .line 1
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    invoke-static {p1, p2, v0}, Lkg/a;->h3(III)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkg/a;->y3(II)V

    return-object p0
.end method

.method protected final d3(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    sget-boolean p1, Lkg/a;->h:Z

    if-eqz p1, :cond_0

    const-string p1, "dstIndex"

    .line 3
    invoke-static {p1, p3, p2, p4}, Lkg/a;->j3(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public e2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->V2(II)V

    return-object p0
.end method

.method protected final e3(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_0

    check-cast p1, Lkg/j;

    invoke-static {p0, p1}, Lkg/n;->o(Lkg/j;Lkg/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f0()Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    new-instance v0, Lkg/v0;

    invoke-direct {v0, p0}, Lkg/v0;-><init>(Lkg/a;)V

    return-object v0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->W2(II)V

    return-object p0
.end method

.method protected final f3(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    return-void
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/a;->X2(IJ)V

    return-object p0
.end method

.method final g3(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    const-string v1, "index"

    invoke-static {v1, p1, p2, v0}, Lkg/a;->j3(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->Y2(II)V

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lkg/n;->u(Lkg/j;)I

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->Z2(II)V

    return-object p0
.end method

.method protected final i3(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public j1()Z
    .locals 2

    iget v0, p0, Lkg/a;->b:I

    iget v1, p0, Lkg/a;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->a3(II)V

    return-object p0
.end method

.method public k1(I)Z
    .locals 2

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k2(II)Lkg/j;
    .locals 3

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 p2, p2, 0x7

    :goto_0
    if-lez v0, :cond_1

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lkg/a;->X2(IJ)V

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 3
    invoke-virtual {p0, p1, v0}, Lkg/a;->V2(II)V

    goto :goto_3

    :cond_2
    if-ge p2, v1, :cond_3

    :goto_1
    if-lez p2, :cond_4

    .line 4
    invoke-virtual {p0, p1, v0}, Lkg/a;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, p1, v0}, Lkg/a;->V2(II)V

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    :goto_2
    if-lez p2, :cond_4

    .line 6
    invoke-virtual {p0, p1, v0}, Lkg/a;->U2(II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object p0
.end method

.method public l1()Lkg/j;
    .locals 1

    iget v0, p0, Lkg/a;->a:I

    iput v0, p0, Lkg/a;->c:I

    return-object p0
.end method

.method public l2(I)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lkg/a;->a:I

    return-object p0
.end method

.method protected final l3(I)V
    .locals 1

    const-string v0, "minimumReadableBytes"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lkg/a;->m3(I)V

    return-void
.end method

.method public m0(IZ)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    const-string v0, "minWritableBytes"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lkg/a;->t2()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v1

    sub-int v2, v0, v1

    if-le p1, v2, :cond_3

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lkg/j;->I(I)Lkg/j;

    const/4 p1, 0x3

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lkg/j;->n1()I

    move-result p2

    if-lt p2, p1, :cond_4

    add-int/2addr v1, p2

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object p2

    add-int/2addr v1, p1

    invoke-interface {p2, v1, v0}, Lkg/k;->c(II)I

    move-result v1

    .line 10
    :goto_1
    invoke-virtual {p0, v1}, Lkg/j;->I(I)Lkg/j;

    const/4 p1, 0x2

    return p1
.end method

.method public m1()I
    .locals 1

    iget v0, p0, Lkg/a;->e:I

    return v0
.end method

.method public m2()Lkg/j;
    .locals 2

    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/a;->n2(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lkg/j;
    .locals 1

    const-string v0, "minWritableBytes"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lkg/a;->q3(I)V

    return-object p0
.end method

.method public n2(II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    new-instance v0, Lkg/x0;

    invoke-direct {v0, p0, p1, p2}, Lkg/x0;-><init>(Lkg/a;II)V

    return-object v0
.end method

.method protected final n3(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    sget-boolean p1, Lkg/a;->h:Z

    if-eqz p1, :cond_0

    const-string p1, "srcIndex"

    .line 3
    invoke-static {p1, p3, p2, p4}, Lkg/a;->j3(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    add-int/2addr p2, p1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lkg/a;->r3(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public o1()I
    .locals 2

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkg/n;->j(Lkg/j;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final o3()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkg/a;->d:I

    iput v0, p0, Lkg/a;->c:I

    return-void
.end method

.method public p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    :try_start_0
    iget v0, p0, Lkg/a;->a:I

    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lkg/a;->r3(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lkg/a;->o2(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final p3()V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/a;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkg/j;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public q0()Z
    .locals 2

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    iget v1, p0, Lkg/a;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q1()Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method final q3(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v0

    add-int v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v5

    if-gt v1, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {p0}, Lkg/a;->p3()V

    return-void

    .line 4
    :cond_2
    sget-boolean v4, Lkg/a;->h:Z

    if-eqz v4, :cond_4

    if-ltz v1, :cond_3

    iget v4, p0, Lkg/a;->e:I

    if-gt v1, v4, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x2

    iget v0, p0, Lkg/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    aput-object p0, v4, p1

    const-string p1, "writerIndex(%d) + minWritableBytes(%d) exceeds maxCapacity(%d): %s"

    .line 8
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lkg/j;->n1()I

    move-result v2

    if-lt v2, p1, :cond_5

    add-int/2addr v0, v2

    goto :goto_3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object p1

    iget v0, p0, Lkg/a;->e:I

    invoke-interface {p1, v1, v0}, Lkg/k;->c(II)I

    move-result v0

    .line 11
    :goto_3
    invoke-virtual {p0, v0}, Lkg/j;->I(I)Lkg/j;

    return-void
.end method

.method r3(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result v0

    invoke-interface {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/g;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public s3()Lkg/j;
    .locals 1

    iget v0, p0, Lkg/a;->b:I

    iput v0, p0, Lkg/a;->d:I

    return-object p0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0}, Lkg/a;->P1()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public t2()I
    .locals 2

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v0

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final t3(I)V
    .locals 0

    iput p1, p0, Lkg/a;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(freed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(ridx: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widx: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cap: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkg/j;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lkg/a;->e:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2f

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkg/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ", unwrapped: "

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x29

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->M2(I)B

    move-result p1

    return p1
.end method

.method public u2(I)Lkg/j;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 2
    iget v0, p0, Lkg/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, p1}, Lkg/a;->U2(II)V

    return-object p0
.end method

.method protected u3()Lkg/r0;
    .locals 1

    new-instance v0, Lkg/r0;

    invoke-direct {v0, p0}, Lkg/r0;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lkg/j;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget p2, p0, Lkg/a;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->b:I

    :cond_0
    return p1
.end method

.method public v3(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/a;->n2(II)Lkg/j;

    move-result-object p1

    invoke-virtual {p1}, Lkg/j;->T1()Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "endianness"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lkg/a;->u3()Lkg/r0;

    move-result-object p1

    return-object p1
.end method

.method public w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lkg/a;->q3(I)V

    .line 3
    iget v1, p0, Lkg/a;->b:I

    invoke-virtual {p0, v1, p1}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    .line 4
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method public w3(I[B)Lkg/j;
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkg/j;->b2(I[BII)Lkg/j;

    return-object p0
.end method

.method public x1()B
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkg/a;->m3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    .line 3
    invoke-virtual {p0, v1}, Lkg/a;->M2(I)B

    move-result v2

    add-int/2addr v1, v0

    .line 4
    iput v1, p0, Lkg/a;->a:I

    return v2
.end method

.method public x2(Lkg/j;)Lkg/j;
    .locals 1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->y2(Lkg/j;I)Lkg/j;

    return-object p0
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    invoke-virtual {p0, v0, p1, p2}, Lkg/j;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->a:I

    return p1
.end method

.method public y2(Lkg/j;I)Lkg/j;
    .locals 1

    .line 1
    sget-boolean v0, Lkg/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lkg/a;->k3(Lkg/j;I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lkg/a;->z2(Lkg/j;II)Lkg/j;

    .line 4
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lkg/j;->R1(I)Lkg/j;

    return-object p0
.end method

.method final y3(II)V
    .locals 0

    .line 1
    iput p1, p0, Lkg/a;->a:I

    .line 2
    iput p2, p0, Lkg/a;->b:I

    return-void
.end method

.method public z1(I)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->l3(I)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lkg/s0;->d:Lkg/j;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    iget v1, p0, Lkg/a;->e:I

    invoke-interface {v0, p1, v1}, Lkg/k;->j(II)Lkg/j;

    move-result-object v0

    .line 4
    iget v1, p0, Lkg/a;->a:I

    invoke-virtual {v0, p0, v1, p1}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 5
    iget v1, p0, Lkg/a;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lkg/a;->a:I

    return-object v0
.end method

.method public z2(Lkg/j;II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    .line 3
    iget p1, p0, Lkg/a;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lkg/a;->b:I

    return-object p0
.end method

.method protected final z3(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lkg/a;->y3(II)V

    :cond_0
    return-void
.end method
