.class final Lkg/n0;
.super Lkg/m0;
.source "SourceFile"


# instance fields
.field private final q:J


# direct methods
.method constructor <init>(Lkg/k;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/m0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object p1, p0, Lkg/m0;->n:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lkg/n0;->q:J

    return-void
.end method

.method private G3(I)J
    .locals 4

    iget-wide v0, p0, Lkg/n0;->q:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->f3(II)V

    const-string v0, "dst"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_2

    .line 3
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_2

    .line 4
    invoke-virtual {p2}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lkg/j;->p1()J

    move-result-wide p1

    int-to-long v3, p3

    add-long/2addr v3, p1

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v1

    invoke-virtual {p2}, Lkg/j;->y()[B

    move-result-object v3

    invoke-virtual {p2}, Lkg/j;->z()I

    move-result p1

    add-int v4, p1, p3

    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    :goto_0
    return-object p0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dstIndex: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E0(I[BII)Lkg/j;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->f3(II)V

    const-string v0, "dst"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_1

    .line 3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v1

    int-to-long v5, p4

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    :cond_0
    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x2

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p3

    const-string p2, "dstIndex: %d, length: %d (expected: range(0, %d))"

    .line 7
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected M2(I)B
    .locals 2

    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->b(J)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 2

    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->i(J)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->m(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/m0;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lkg/k;->i(II)Lkg/j;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v2

    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v4

    int-to-long v6, p2

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Lkg/j;->d2(II)Lkg/j;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected R2(I)S
    .locals 2

    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->q(J)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 2

    invoke-direct {p0, p1}, Lkg/n0;->G3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->u(J)I

    move-result p1

    return p1
.end method

.method public b1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p1()J
    .locals 2

    iget-wide v0, p0, Lkg/n0;->q:J

    return-wide v0
.end method
