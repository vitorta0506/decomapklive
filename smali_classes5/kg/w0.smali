.class public Lkg/w0;
.super Lkg/e;
.source "SourceFile"


# instance fields
.field private final n:Lkg/k;

.field o:[B

.field private p:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lkg/k;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lkg/e;-><init>(I)V

    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    const-string p3, "alloc"

    .line 2
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/k;

    iput-object p1, p0, Lkg/w0;->n:Lkg/k;

    .line 3
    invoke-virtual {p0, p2}, Lkg/w0;->F3(I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/w0;->J3([B)V

    .line 4
    invoke-virtual {p0, v0, v0}, Lkg/a;->d2(II)Lkg/j;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "initialCapacity(%d) > maxCapacity(%d)"

    .line 7
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lkg/k;[BI)V
    .locals 2

    .line 8
    invoke-direct {p0, p3}, Lkg/e;-><init>(I)V

    const-string v0, "alloc"

    .line 9
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "initialArray"

    .line 10
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    array-length v0, p2

    const/4 v1, 0x0

    if-gt v0, p3, :cond_0

    .line 12
    iput-object p1, p0, Lkg/w0;->n:Lkg/k;

    .line 13
    invoke-direct {p0, p2}, Lkg/w0;->J3([B)V

    .line 14
    array-length p1, p2

    invoke-virtual {p0, v1, p1}, Lkg/a;->d2(II)Lkg/j;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "initialCapacity(%d) > maxCapacity(%d)"

    .line 17
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private H3(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-eqz p4, :cond_0

    .line 2
    invoke-direct {p0}, Lkg/w0;->I3()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lkg/w0;->o:[B

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 4
    :goto_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object p4

    add-int/2addr p1, p3

    invoke-virtual {p4, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private I3()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/w0;->p:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lkg/w0;->p:Ljava/nio/ByteBuffer;

    :cond_0
    return-object v0
.end method

.method private J3([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkg/w0;->o:[B

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lkg/w0;->p:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    .line 2
    invoke-virtual {p2}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lkg/w0;->o:[B

    invoke-virtual {p2}, Lkg/j;->p1()J

    move-result-wide v2

    int-to-long p2, p3

    add-long v3, v2, p2

    int-to-long v5, p4

    move v2, p1

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q([BIJJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lkg/j;->y()[B

    move-result-object v0

    invoke-virtual {p2}, Lkg/j;->z()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/w0;->E0(I[BII)Lkg/j;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    :goto_0
    return-object p0
.end method

.method protected C3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p0, v0}, Lkg/w0;->G3([B)V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    iput-object v0, p0, Lkg/w0;->o:[B

    return-void
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    array-length v0, v0

    return v0
.end method

.method public F0(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->O2(I)I

    move-result p1

    return p1
.end method

.method protected F3(I)[B
    .locals 0

    new-array p1, p1, [B

    return-object p1
.end method

.method public G0(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected G3([B)V
    .locals 0

    return-void
.end method

.method public I(I)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->i3(I)V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    .line 3
    array-length v1, v0

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    if-le p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lkg/a;->z3(I)V

    move v1, p1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lkg/w0;->F3(I)[B

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-direct {p0, p1}, Lkg/w0;->J3([B)V

    .line 8
    invoke-virtual {p0, v0}, Lkg/w0;->G3([B)V

    return-object p0
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->a([BI)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->b([BI)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->c([BI)I

    move-result p1

    return p1
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/w0;->n:Lkg/k;

    return-object v0
.end method

.method public P0(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->R2(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->d([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/w0;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lkg/k;->f(II)Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/w0;->o:[B

    invoke-virtual {v0, v1, p1, p2}, Lkg/j;->B2([BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->S2(I)S

    move-result p1

    return p1
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->e([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->f([BI)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->g([BI)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/s;->h([BI)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->i([BII)V

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->j([BII)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->k([BII)V

    return-void
.end method

.method public X0(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->U2(II)V

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2, p3}, Lkg/s;->l([BIJ)V

    return-void
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkg/w0;->I3()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method protected Y2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->m([BII)V

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->n([BII)V

    return-void
.end method

.method public a1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    .line 2
    invoke-virtual {p2}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lkg/j;->p1()J

    move-result-wide v0

    int-to-long p2, p3

    add-long v2, v0, p2

    iget-object v4, p0, Lkg/w0;->o:[B

    int-to-long v6, p4

    move v5, p1

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lkg/j;->y()[B

    move-result-object v0

    invoke-virtual {p2}, Lkg/j;->z()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/w0;->b2(I[BII)Lkg/j;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lkg/j;->E0(I[BII)Lkg/j;

    :goto_0
    return-object p0
.end method

.method protected a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/s;->o([BII)V

    return-void
.end method

.method public b1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-direct {p0}, Lkg/w0;->I3()Ljava/nio/ByteBuffer;

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

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->V2(II)V

    return-object p0
.end method

.method public f2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->W2(II)V

    return-object p0
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g2(IJ)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/w0;->X2(IJ)V

    return-object p0
.end method

.method public getInt(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/w0;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->Y2(II)V

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->Z2(II)V

    return-object p0
.end method

.method public j2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/w0;->a3(II)V

    return-object p0
.end method

.method public p1()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

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
    invoke-virtual {p0, p1}, Lkg/w0;->M2(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lkg/w0;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lkg/w0;->H3(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public y()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    return-object v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lkg/a;->l3(I)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lkg/w0;->H3(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->a:I

    return p1
.end method

.method public z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
