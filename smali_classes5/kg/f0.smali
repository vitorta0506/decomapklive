.class final Lkg/f0;
.super Lkg/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/c0<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final x:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/f0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/f0$a;

    invoke-direct {v0}, Lkg/f0$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/f0;->x:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/f0;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lkg/c0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;ILkg/f0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/f0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method private P3(ILjava/io/OutputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->f3(II)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkg/c0;->P()Lkg/k;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lkg/c0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast p4, Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p4

    :goto_0
    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p4, p1, p3, p2}, Lkg/n;->D(Lkg/k;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V

    return-void
.end method

.method static Q3(I)Lkg/f0;
    .locals 1

    .line 1
    sget-object v0, Lkg/f0;->x:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/f0;

    .line 2
    invoke-virtual {v0, p0}, Lkg/c0;->O3(I)V

    return-object v0
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

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/f0;->E0(I[BII)Lkg/j;

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
    invoke-virtual {p0, p1, v0}, Lkg/f0;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

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

.method public A1(Ljava/io/OutputStream;I)Lkg/j;
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

    invoke-direct {p0, v0, p1, p2, v1}, Lkg/f0;->P3(ILjava/io/OutputStream;IZ)V

    .line 3
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lkg/a;->l3(I)V

    .line 3
    iget v1, p0, Lkg/a;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public D1([BII)Lkg/j;
    .locals 2

    .line 1
    array-length v0, p1

    invoke-virtual {p0, p3, p2, v0}, Lkg/a;->c3(III)V

    .line 2
    iget v0, p0, Lkg/a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p4, v0}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method protected bridge synthetic M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/f0;->R3(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lkg/f0;->N2(I)I

    move-result p1

    invoke-static {p1}, Lkg/n;->J(I)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/c0;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lkg/k;->i(II)Lkg/j;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected Q2(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lkg/f0;->P2(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/n;->K(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method protected R3(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected S2(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lkg/f0;->R2(I)S

    move-result p1

    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x2

    .line 4
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected W2(II)V
    .locals 0

    invoke-static {p2}, Lkg/n;->J(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkg/f0;->V2(II)V

    return-void
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected Y2(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 3
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 4
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    .line 3
    invoke-virtual {p0}, Lkg/c0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 6
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

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

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/f0;->b2(I[BII)Lkg/j;

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
    invoke-virtual {p0, p1, v0}, Lkg/f0;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    add-int/2addr p1, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, p3, p0, p1, p4}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    :cond_2
    :goto_1
    return-object p0
.end method

.method protected a3(II)V
    .locals 0

    int-to-short p2, p2

    invoke-static {p2}, Lkg/n;->M(S)S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkg/f0;->Z2(II)V

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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p4, v0}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p1()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkg/f0;->P3(ILjava/io/OutputStream;IZ)V

    return-object p0
.end method

.method public y()[B
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/c0;->G3(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public z()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
