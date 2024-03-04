.class public Lkg/y0;
.super Lkg/u0;
.source "SourceFile"


# instance fields
.field s:J


# direct methods
.method public constructor <init>(Lkg/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkg/u0;-><init>(Lkg/k;II)V

    return-void
.end method

.method protected constructor <init>(Lkg/k;Ljava/nio/ByteBuffer;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lkg/u0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;IZZ)V

    return-void
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 7

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->g(Lkg/a;JILkg/j;II)V

    return-object p0
.end method

.method I3(ILjava/io/OutputStream;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkg/c1;->e(Lkg/a;JILjava/io/OutputStream;I)V

    return-void
.end method

.method public J2(I)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    .line 3
    invoke-virtual {p0, v0}, Lkg/y0;->N3(I)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lkg/c1;->P(JI)V

    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lkg/a;->b:I

    return-object p0
.end method

.method J3(ILjava/nio/ByteBuffer;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->f(Lkg/a;JILjava/nio/ByteBuffer;)V

    return-void
.end method

.method K3(I[BIIZ)V
    .locals 7

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->h(Lkg/a;JI[BII)V

    return-void
.end method

.method protected M2(I)B
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->b(J)B

    move-result p1

    return p1
.end method

.method final M3(Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lkg/u0;->M3(Ljava/nio/ByteBuffer;Z)V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lkg/y0;->s:J

    return-void
.end method

.method protected N2(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->i(J)I

    move-result p1

    return p1
.end method

.method final N3(I)J
    .locals 4

    iget-wide v0, p0, Lkg/y0;->s:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected O2(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->k(J)I

    move-result p1

    return p1
.end method

.method public P0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->R2(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->m(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->a(Lkg/a;JII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected Q2(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->o(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->q(J)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->s(J)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->u(J)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->x(JI)V

    return-void
.end method

.method protected V2(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->C(JI)V

    return-void
.end method

.method protected W2(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->E(JI)V

    return-void
.end method

.method public X0(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/y0;->U2(II)V

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lkg/c1;->G(JJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->I(JI)V

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->z(Lkg/a;JILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method protected Z2(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->K(JI)V

    return-void
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 7

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->A(Lkg/a;JILkg/j;II)V

    return-object p0
.end method

.method protected a3(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->M(JI)V

    return-void
.end method

.method public b1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 7

    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->B(Lkg/a;JI[BII)V

    return-object p0
.end method

.method public e2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/y0;->V2(II)V

    return-object p0
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/y0;->X2(IJ)V

    return-object p0
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/y0;->Y2(II)V

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/y0;->Z2(II)V

    return-object p0
.end method

.method public k2(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->N3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->P(JI)V

    return-object p0
.end method

.method public p1()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-wide v0, p0, Lkg/y0;->s:J

    return-wide v0
.end method

.method public u0(I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/y0;->M2(I)B

    move-result p1

    return p1
.end method

.method protected u3()Lkg/r0;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lkg/d1;

    invoke-direct {v0, p0}, Lkg/d1;-><init>(Lkg/a;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lkg/a;->u3()Lkg/r0;

    move-result-object v0

    return-object v0
.end method
