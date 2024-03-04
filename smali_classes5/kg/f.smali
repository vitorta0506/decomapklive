.class abstract Lkg/f;
.super Lkg/c;
.source "SourceFile"


# instance fields
.field private final j:Lkg/j;

.field private final k:I


# direct methods
.method constructor <init>(Lkg/j;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lkg/c;-><init>(I)V

    .line 2
    invoke-static {p2, p3, p1}, Lkg/f;->I3(IILkg/j;)V

    .line 3
    instance-of v0, p1, Lkg/f;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lkg/f;

    iget-object v0, p1, Lkg/f;->j:Lkg/j;

    iput-object v0, p0, Lkg/f;->j:Lkg/j;

    .line 5
    iget p1, p1, Lkg/f;->k:I

    add-int/2addr p1, p2

    iput p1, p0, Lkg/f;->k:I

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lkg/q;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lkg/j;->s2()Lkg/j;

    move-result-object p1

    iput-object p1, p0, Lkg/f;->j:Lkg/j;

    .line 8
    iput p2, p0, Lkg/f;->k:I

    goto :goto_0

    .line 9
    :cond_1
    iput-object p1, p0, Lkg/f;->j:Lkg/j;

    .line 10
    iput p2, p0, Lkg/f;->k:I

    .line 11
    :goto_0
    invoke-virtual {p0, p3}, Lkg/f;->K3(I)V

    .line 12
    invoke-virtual {p0, p3}, Lkg/a;->L2(I)Lkg/j;

    return-void
.end method

.method static I3(IILkg/j;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkg/j;->F()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".slice("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->E0(I[BII)Lkg/j;

    return-object p0
.end method

.method public F0(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->F0(I)I

    move-result p1

    return p1
.end method

.method public G0(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->G0(I)J

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

.method final J3(I)I
    .locals 1

    iget v0, p0, Lkg/f;->k:I

    add-int/2addr p1, v0

    return p1
.end method

.method K3(I)V
    .locals 0

    return-void
.end method

.method protected M2(I)B
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->u0(I)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->F0(I)I

    move-result p1

    return p1
.end method

.method public P()Lkg/k;
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public P0(I)S
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->P0(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

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
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->Q0(I)S

    move-result p1

    return p1
.end method

.method protected Q2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->G0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->P0(I)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->Q0(I)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->X0(I)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->X1(II)Lkg/j;

    return-void
.end method

.method protected V2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->e2(II)Lkg/j;

    return-void
.end method

.method protected W2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->f2(II)Lkg/j;

    return-void
.end method

.method public X0(I)I
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->X0(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->X1(II)Lkg/j;

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->g2(IJ)Lkg/j;

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
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method protected Y2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->h2(II)Lkg/j;

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    return-void
.end method

.method public a1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->a1()Z

    move-result v0

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method protected a3(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->j2(II)Lkg/j;

    return-void
.end method

.method public b1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v0

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p4}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

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
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->e2(II)Lkg/j;

    return-object p0
.end method

.method public f0()Lkg/j;
    .locals 3

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->f0()Lkg/j;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v1

    invoke-virtual {p0, v1}, Lkg/f;->J3(I)I

    move-result v1

    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v2

    invoke-virtual {p0, v2}, Lkg/f;->J3(I)I

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
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->f2(II)Lkg/j;

    return-object p0
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->g2(IJ)Lkg/j;

    return-object p0
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->h1()Z

    move-result v0

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->h2(II)Lkg/j;

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    return-object p0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->j2(II)Lkg/j;

    return-object p0
.end method

.method public n2(II)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->n2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/f;->k:I

    if-lt p1, p2, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public p1()J
    .locals 4

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v0

    iget v2, p0, Lkg/f;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public s1()I
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->s1()I

    move-result v0

    return v0
.end method

.method public s2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/f;->j:Lkg/j;

    return-object v0
.end method

.method public u0(I)B
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

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
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

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
    invoke-virtual {p0, p1, p3}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->w0(ILjava/io/OutputStream;I)Lkg/j;

    return-object p0
.end method

.method public y()[B
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->y()[B

    move-result-object v0

    return-object v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->g3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public z()I
    .locals 1

    invoke-virtual {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->z()I

    move-result v0

    invoke-virtual {p0, v0}, Lkg/f;->J3(I)I

    move-result v0

    return v0
.end method
