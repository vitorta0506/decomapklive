.class Lkg/h0;
.super Lkg/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/c0<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final x:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/h0$a;

    invoke-direct {v0}, Lkg/h0$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/h0;->x:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "+",
            "Lkg/h0;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lkg/c0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method static P3(I)Lkg/h0;
    .locals 1

    .line 1
    sget-object v0, Lkg/h0;->x:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/h0;

    .line 2
    invoke-virtual {v0, p0}, Lkg/c0;->O3(I)V

    return-object v0
.end method


# virtual methods
.method public final A0(ILkg/j;II)Lkg/j;
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
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result v2

    invoke-virtual {p2}, Lkg/j;->p1()J

    move-result-wide p1

    int-to-long v3, p3

    add-long/2addr v3, p1

    int-to-long v5, p4

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

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/h0;->E0(I[BII)Lkg/j;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {p2, p3, v0, p1, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    :goto_0
    return-object p0
.end method

.method public final E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method final G3(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->a([BI)B

    move-result p1

    return p1
.end method

.method protected bridge synthetic M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkg/h0;->Q3([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->b([BI)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->c([BI)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->d([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Q(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/c0;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lkg/k;->f(II)Lkg/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lkg/j;->B2([BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->e([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final Q3([B)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->f([BI)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->g([BI)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/s;->h([BI)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->i([BII)V

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->j([BII)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->k([BII)V

    return-void
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Lkg/s;->l([BIJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->m([BII)V

    return-void
.end method

.method public final Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 3
    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {p2, v1, p1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->n([BII)V

    return-void
.end method

.method public final a1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a2(ILkg/j;II)Lkg/j;
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

    iget-object p2, p0, Lkg/c0;->q:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result v5

    int-to-long v6, p4

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

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/h0;->b2(I[BII)Lkg/j;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {p2, p3, v0, p1, p4}, Lkg/j;->E0(I[BII)Lkg/j;

    :goto_0
    return-object p0
.end method

.method protected a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/s;->o([BII)V

    return-void
.end method

.method public final b1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b2(I[BII)Lkg/j;
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public final h1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p1()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method

.method public final y()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public final y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 3
    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {p2, v1, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lkg/c0;->r:I

    return v0
.end method
