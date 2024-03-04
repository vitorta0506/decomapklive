.class public Lkg/z0;
.super Lkg/w0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkg/k;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkg/w0;-><init>(Lkg/k;II)V

    return-void
.end method


# virtual methods
.method public F0(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->O2(I)I

    move-result p1

    return p1
.end method

.method protected F3(I)[B
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object p1

    return-object p1
.end method

.method public G0(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public J2(I)Lkg/j;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    .line 3
    iget v0, p0, Lkg/a;->b:I

    .line 4
    iget-object v1, p0, Lkg/w0;->o:[B

    invoke-static {v1, v0, p1}, Lkg/c1;->Q([BII)V

    add-int/2addr v0, p1

    .line 5
    iput v0, p0, Lkg/a;->b:I

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lkg/a;->J2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->c([BI)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->j([BI)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->l([BI)I

    move-result p1

    return p1
.end method

.method public P0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->R2(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->n([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->S2(I)S

    move-result p1

    return p1
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->p([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->r([BI)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->t([BI)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1}, Lkg/c1;->v([BI)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->y([BII)V

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->D([BII)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->F([BII)V

    return-void
.end method

.method public X0(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->U2(II)V

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2, p3}, Lkg/c1;->H([BIJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->J([BII)V

    return-void
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->L([BII)V

    return-void
.end method

.method protected a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->N([BII)V

    return-void
.end method

.method public e2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->V2(II)V

    return-object p0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->W2(II)V

    return-object p0
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/z0;->X2(IJ)V

    return-object p0
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->Y2(II)V

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->Z2(II)V

    return-object p0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/z0;->a3(II)V

    return-object p0
.end method

.method public k2(II)Lkg/j;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 3
    iget-object v0, p0, Lkg/w0;->o:[B

    invoke-static {v0, p1, p2}, Lkg/c1;->Q([BII)V

    return-object p0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lkg/a;->k2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->e3(I)V

    .line 2
    invoke-virtual {p0, p1}, Lkg/z0;->M2(I)B

    move-result p1

    return p1
.end method

.method protected u3()Lkg/r0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lkg/e1;

    invoke-direct {v0, p0}, Lkg/e1;-><init>(Lkg/a;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lkg/a;->u3()Lkg/r0;

    move-result-object v0

    return-object v0
.end method
