.class Lkg/m0;
.super Lkg/e;
.source "SourceFile"


# instance fields
.field protected final n:Ljava/nio/ByteBuffer;

.field private final o:Lkg/k;

.field private p:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lkg/k;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lkg/e;-><init>(I)V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lkg/m0;->o:Lkg/k;

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, p1}, Lkg/a;->L2(I)Lkg/j;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must be a readonly buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    .line 2
    invoke-virtual {p2}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lkg/j;->y()[B

    move-result-object v0

    invoke-virtual {p2}, Lkg/j;->z()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/m0;->E0(I[BII)Lkg/j;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p2, p3, p4}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 7
    invoke-virtual {p0, p1, v0}, Lkg/m0;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    add-int/2addr p1, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    :cond_2
    :goto_1
    return-object p0
.end method

.method protected C3()V
    .locals 0

    return-void
.end method

.method public E0(I[BII)Lkg/j;
    .locals 2

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    .line 2
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    return v0
.end method

.method public F0(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->O2(I)I

    move-result p1

    return p1
.end method

.method protected final F3()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/m0;->p:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lkg/m0;->p:Ljava/nio/ByteBuffer;

    :cond_0
    return-object v0
.end method

.method public G0(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public I(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lkg/n;->J(I)I

    move-result p1

    return p1
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/m0;->o:Lkg/k;

    return-object v0
.end method

.method public P0(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->R2(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkg/m0;->P()Lkg/k;

    move-result-object p1

    invoke-interface {p1, p2}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkg/m0;->P()Lkg/k;

    move-result-object p1

    invoke-interface {p1, p2}, Lkg/k;->b(I)Lkg/j;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Lkg/j;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    return-object p1

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q0(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->S2(I)S

    move-result p1

    return p1
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/n;->K(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkg/m0;->u0(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lkg/m0;->u0(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lkg/m0;->u0(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected U2(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected V2(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected W2(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public X0(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected X2(IJ)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected Y2(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected Z2(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public a1()Z
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method protected a3(II)V
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public b1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public e2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public f2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g2(IJ)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public getInt(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h1()Z
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public i1()Z
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public i2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public j2(II)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public k1(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m0(IZ)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public n0(I)Lkg/j;
    .locals 0

    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public p1()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
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

.method public u0(I)B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/m0;->M2(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lkg/m0;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p3

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-nez p3, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p3}, Lkg/n;->O(I)[B

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v1, v0, p1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-object p0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/m0;->F3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method
