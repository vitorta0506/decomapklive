.class public final Lkg/r;
.super Lkg/j;
.source "SourceFile"


# static fields
.field private static final e:Ljava/nio/ByteBuffer;

.field private static final f:J


# instance fields
.field private final a:Lkg/k;

.field private final b:Ljava/nio/ByteOrder;

.field private final c:Ljava/lang/String;

.field private d:Lkg/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lkg/r;->e:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v0

    .line 4
    :catchall_0
    :cond_0
    sput-wide v1, Lkg/r;->f:J

    return-void
.end method

.method public constructor <init>(Lkg/k;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lkg/r;-><init>(Lkg/k;Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private constructor <init>(Lkg/k;Ljava/nio/ByteOrder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lkg/j;-><init>()V

    const-string v0, "alloc"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/k;

    iput-object p1, p0, Lkg/r;->a:Lkg/k;

    .line 4
    iput-object p2, p0, Lkg/r;->b:Ljava/nio/ByteOrder;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    const-string p2, "BE"

    goto :goto_0

    :cond_0
    const-string p2, "LE"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkg/r;->c:Ljava/lang/String;

    return-void
.end method

.method private M2(I)Lkg/j;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private N2(II)Lkg/j;
    .locals 1

    const-string v0, "length"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private O2(I)Lkg/j;
    .locals 1

    const-string v0, "length"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p4}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 0

    invoke-direct {p0, p2}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public A2([B)Lkg/j;
    .locals 0

    array-length p1, p1

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public B()Lkg/j;
    .locals 1

    invoke-static {p0}, Lkg/s0;->h(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public B2([BII)Lkg/j;
    .locals 0

    invoke-direct {p0, p3}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C0(I[B)Lkg/j;
    .locals 0

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C1([B)Lkg/j;
    .locals 0

    array-length p1, p1

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public D1([BII)Lkg/j;
    .locals 0

    invoke-direct {p0, p3}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public E0(I[BII)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p4}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public E1()I
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public E2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public F()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F0(I)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public F1()I
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public F2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public G0(I)J
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public G1()J
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public G2(J)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public H0(I)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public H1()I
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public H2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public I(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public I1(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public I2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public J1()S
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public J2(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K1(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public L1()S
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public L2(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->M2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public M(Lkg/j;)I
    .locals 0

    invoke-virtual {p1}, Lkg/j;->j1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public M1()J
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public N()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public N1()I
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public O1()I
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/r;->a:Lkg/k;

    return-object v0
.end method

.method public P0(I)S
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public P1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q(II)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public Q1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R0(I)S
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public R1(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->M2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public S0(I)J
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public S1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public T0(I)J
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public T1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public U1(I)Lkg/j;
    .locals 0

    return-object p0
.end method

.method public V1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public W1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public X0(I)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public Y0(I)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    invoke-direct {p0, p1, p3}, Lkg/r;->N2(II)Lkg/j;

    const/4 p1, 0x0

    return p1
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public a1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p4}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public b1()Z
    .locals 5

    sget-wide v0, Lkg/r;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p4}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public c0()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lkg/r;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public d1(IIB)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkg/r;->M2(I)Lkg/j;

    .line 2
    invoke-direct {p0, p2}, Lkg/r;->M2(I)Lkg/j;

    const/4 p1, -0x1

    return p1
.end method

.method public d2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkg/r;->M2(I)Lkg/j;

    .line 2
    invoke-direct {p0, p2}, Lkg/r;->M2(I)Lkg/j;

    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 0

    sget-object p1, Lkg/r;->e:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public e2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_0

    check-cast p1, Lkg/j;

    invoke-virtual {p1}, Lkg/j;->j1()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f0()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public f2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g2(IJ)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getInt(I)I
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getLong(I)J
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public j1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public k1(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k2(II)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public l1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public l2(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public m0(IZ)I
    .locals 0

    const-string p2, "minWritableBytes"

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public m1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m2()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public n0(I)Lkg/j;
    .locals 1

    const-string v0, "minWritableBytes"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public n2(II)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    const/4 p1, -0x1

    return p1
.end method

.method public o1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    .line 2
    invoke-virtual {p0, p3}, Lkg/r;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public p1()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/r;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-wide v0, Lkg/r;->f:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q1()Ljava/nio/ByteBuffer;
    .locals 1

    sget-object v0, Lkg/r;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public q2()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    .line 2
    invoke-virtual {p0}, Lkg/r;->q1()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/r;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public s1()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s2()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    sget-object v1, Lkg/r;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public t2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/r;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    .line 2
    invoke-virtual {p0}, Lkg/r;->t1()[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public u2(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    invoke-direct {p0, p1, p3}, Lkg/r;->N2(II)Lkg/j;

    const/4 p1, 0x0

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lkg/r;->b:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    invoke-direct {p0, p2}, Lkg/r;->O2(I)Lkg/j;

    const/4 p1, 0x0

    return p1
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1, p3}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 2

    const-string v0, "endianness"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkg/r;->v1()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/r;->d:Lkg/r;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lkg/r;

    invoke-virtual {p0}, Lkg/r;->P()Lkg/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkg/r;-><init>(Lkg/k;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lkg/r;->d:Lkg/r;

    return-object v0
.end method

.method public w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public x1()B
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public x2(Lkg/j;)Lkg/j;
    .locals 0

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public y()[B
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    return-object v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lkg/r;->N2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    invoke-direct {p0, p2}, Lkg/r;->O2(I)Lkg/j;

    const/4 p1, 0x0

    return p1
.end method

.method public y2(Lkg/j;I)Lkg/j;
    .locals 0

    invoke-direct {p0, p2}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z1(I)Lkg/j;
    .locals 0

    invoke-direct {p0, p1}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public z2(Lkg/j;II)Lkg/j;
    .locals 0

    invoke-direct {p0, p3}, Lkg/r;->O2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method
