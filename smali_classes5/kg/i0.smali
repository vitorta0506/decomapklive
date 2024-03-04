.class final Lkg/i0;
.super Lkg/d;
.source "SourceFile"


# static fields
.field private static final r:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/i0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/i0$a;

    invoke-direct {v0}, Lkg/i0$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/i0;->r:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/i0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lkg/d;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lkg/i0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkg/i0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method private J3(I)I
    .locals 1

    iget v0, p0, Lkg/i0;->q:I

    add-int/2addr p1, v0

    return p1
.end method

.method static K3(Lkg/a;Lkg/j;II)Lkg/i0;
    .locals 0

    .line 1
    invoke-static {p2, p3, p0}, Lkg/f;->I3(IILkg/j;)V

    .line 2
    invoke-static {p0, p1, p2, p3}, Lkg/i0;->L3(Lkg/a;Lkg/j;II)Lkg/i0;

    move-result-object p0

    return-object p0
.end method

.method private static L3(Lkg/a;Lkg/j;II)Lkg/i0;
    .locals 7

    .line 1
    sget-object v0, Lkg/i0;->r:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/i0;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p3

    .line 2
    invoke-virtual/range {v1 .. v6}, Lkg/d;->G3(Lkg/a;Lkg/j;III)Lkg/d;

    .line 3
    invoke-virtual {v0}, Lkg/a;->o3()V

    .line 4
    iput p2, v0, Lkg/i0;->q:I

    return-object v0
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->E0(I[BII)Lkg/j;

    return-object p0
.end method

.method public F()I
    .locals 1

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    return v0
.end method

.method public F0(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->F0(I)I

    move-result p1

    return p1
.end method

.method public G0(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->G0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public I(I)Lkg/j;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "sliced buffer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected M2(I)B
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->M2(I)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->N2(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->O2(I)I

    move-result p1

    return p1
.end method

.method public P0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->P0(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->Q(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->Q0(I)S

    move-result p1

    return p1
.end method

.method protected Q2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->R2(I)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->S2(I)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->T2(I)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->U2(II)V

    return-void
.end method

.method public V1()Lkg/j;
    .locals 3

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v1

    invoke-direct {p0, v1}, Lkg/i0;->J3(I)I

    move-result v1

    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v2

    invoke-direct {p0, v2}, Lkg/i0;->J3(I)I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lkg/g0;->J3(Lkg/a;Lkg/j;II)Lkg/g0;

    move-result-object v0

    return-object v0
.end method

.method protected V2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->V2(II)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->W2(II)V

    return-void
.end method

.method public X0(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->X0(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->X1(II)Lkg/j;

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->X2(IJ)V

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
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method protected Y2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->Y2(II)V

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->Z2(II)V

    return-void
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method protected a3(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->a3(II)V

    return-void
.end method

.method public b2(I[BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    return-object p0
.end method

.method public e2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->e2(II)Lkg/j;

    return-object p0
.end method

.method public f0()Lkg/j;
    .locals 3

    invoke-virtual {p0}, Lkg/d;->F3()Lkg/j;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v1

    invoke-direct {p0, v1}, Lkg/i0;->J3(I)I

    move-result v1

    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v2

    invoke-direct {p0, v2}, Lkg/i0;->J3(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkg/j;->d2(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->f2(II)Lkg/j;

    return-object p0
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->g2(IJ)Lkg/j;

    return-object p0
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->h2(II)Lkg/j;

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->i2(II)Lkg/j;

    return-object p0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->j2(II)Lkg/j;

    return-object p0
.end method

.method public n2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Lkg/d;->n2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/i0;->q:I

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method public p1()J
    .locals 4

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v0

    iget v2, p0, Lkg/i0;->q:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public v3(II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-static {v0, p0, p1, p2}, Lkg/i0;->L3(Lkg/a;Lkg/j;II)Lkg/i0;

    move-result-object p1

    return-object p1
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->w0(ILjava/io/OutputStream;I)Lkg/j;

    return-object p0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lkg/i0;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public z()I
    .locals 1

    invoke-virtual {p0}, Lkg/d;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->z()I

    move-result v0

    invoke-direct {p0, v0}, Lkg/i0;->J3(I)I

    move-result v0

    return v0
.end method
