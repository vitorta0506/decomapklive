.class final Lkg/j0;
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
.field private static final y:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/j0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/j0$a;

    invoke-direct {v0}, Lkg/j0$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/j0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/j0;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lkg/c0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;ILkg/j0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/j0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method private P3(I)J
    .locals 4

    iget-wide v0, p0, Lkg/j0;->x:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private Q3()V
    .locals 4

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget v2, p0, Lkg/c0;->r:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkg/j0;->x:J

    return-void
.end method

.method static R3(I)Lkg/j0;
    .locals 1

    .line 1
    sget-object v0, Lkg/j0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/j0;

    .line 2
    invoke-virtual {v0, p0}, Lkg/c0;->O3(I)V

    return-object v0
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 7

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->g(Lkg/a;JILkg/j;II)V

    return-object p0
.end method

.method public E0(I[BII)Lkg/j;
    .locals 7

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->h(Lkg/a;JI[BII)V

    return-object p0
.end method

.method I3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p8}, Lkg/c0;->I3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V

    .line 2
    invoke-direct {p0}, Lkg/j0;->Q3()V

    return-void
.end method

.method public J2(I)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    .line 2
    iget v0, p0, Lkg/a;->b:I

    .line 3
    invoke-direct {p0, v0}, Lkg/j0;->P3(I)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lkg/c1;->P(JI)V

    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lkg/a;->b:I

    return-object p0
.end method

.method K3(Lkg/w;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "Ljava/nio/ByteBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lkg/c0;->K3(Lkg/w;I)V

    .line 2
    invoke-direct {p0}, Lkg/j0;->Q3()V

    return-void
.end method

.method protected M2(I)B
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->b(J)B

    move-result p1

    return p1
.end method

.method protected bridge synthetic M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lkg/j0;->S3(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected N2(I)I
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->i(J)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->k(J)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->m(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->a(Lkg/a;JII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected Q2(I)J
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->o(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->q(J)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->s(J)S

    move-result p1

    return p1
.end method

.method protected S3(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected T2(I)I
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/c1;->u(J)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lkg/c1;->x(JI)V

    return-void
.end method

.method protected V2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->C(JI)V

    return-void
.end method

.method protected W2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->E(JI)V

    return-void
.end method

.method protected X2(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lkg/c1;->G(JJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->I(JI)V

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->z(Lkg/a;JILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method protected Z2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->K(JI)V

    return-void
.end method

.method public a1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 7

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

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

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

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

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkg/c1;->B(Lkg/a;JI[BII)V

    return-object p0
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k2(II)Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkg/c1;->P(JI)V

    return-object p0
.end method

.method public p1()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    iget-wide v0, p0, Lkg/j0;->x:J

    return-wide v0
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

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkg/c1;->e(Lkg/a;JILjava/io/OutputStream;I)V

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
    .locals 2

    invoke-direct {p0, p1}, Lkg/j0;->P3(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1, p2}, Lkg/c1;->f(Lkg/a;JILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public z()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
