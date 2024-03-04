.class public Lkg/r0;
.super Lkg/j;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lkg/j;

.field private final b:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>(Lkg/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkg/j;-><init>()V

    const-string v0, "buf"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/j;

    iput-object v0, p0, Lkg/r0;->a:Lkg/j;

    .line 3
    invoke-virtual {p1}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    :goto_0
    return-void
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method public A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->A1(Ljava/io/OutputStream;I)Lkg/j;

    return-object p0
.end method

.method public A2([B)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->A2([B)Lkg/j;

    return-object p0
.end method

.method public B()Lkg/j;
    .locals 1

    invoke-static {p0}, Lkg/s0;->h(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->B1(Ljava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public B2([BII)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->B2([BII)Lkg/j;

    return-object p0
.end method

.method public C0(I[B)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->C0(I[B)Lkg/j;

    return-object p0
.end method

.method public C1([B)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->C1([B)Lkg/j;

    return-object p0
.end method

.method public C2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/r0;->I2(I)Lkg/j;

    return-object p0
.end method

.method public D1([BII)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->D1([BII)Lkg/j;

    return-object p0
.end method

.method public D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->E0(I[BII)Lkg/j;

    return-object p0
.end method

.method public E1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->E1()I

    move-result v0

    invoke-static {v0}, Lkg/n;->J(I)I

    move-result v0

    return v0
.end method

.method public E2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p1}, Lkg/n;->J(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->E2(I)Lkg/j;

    return-object p0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->F()I

    move-result v0

    return v0
.end method

.method public F0(I)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->F0(I)I

    move-result p1

    return p1
.end method

.method public F1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->F1()I

    move-result v0

    return v0
.end method

.method public F2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->F2(I)Lkg/j;

    return-object p0
.end method

.method public G0(I)J
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->G0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public G1()J
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->G1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/n;->K(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public G2(J)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p1, p2}, Lkg/n;->K(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->G2(J)Lkg/j;

    return-object p0
.end method

.method public H0(I)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->H0(I)I

    move-result p1

    invoke-static {p1}, Lkg/n;->L(I)I

    move-result p1

    return p1
.end method

.method public H1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->H1()I

    move-result v0

    invoke-static {v0}, Lkg/n;->L(I)I

    move-result v0

    return v0
.end method

.method public H2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p1}, Lkg/n;->L(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->H2(I)Lkg/j;

    return-object p0
.end method

.method public I(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->I(I)Lkg/j;

    return-object p0
.end method

.method public I1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p1

    iget-object v0, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public I2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    int-to-short p1, p1

    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    invoke-virtual {v0, p1}, Lkg/j;->I2(I)Lkg/j;

    return-object p0
.end method

.method public J1()S
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->J1()S

    move-result v0

    invoke-static {v0}, Lkg/n;->M(S)S

    move-result v0

    return v0
.end method

.method public J2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->J2(I)Lkg/j;

    return-object p0
.end method

.method public K1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->K1(I)Lkg/j;

    move-result-object p1

    iget-object v0, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K2()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->K2()I

    move-result v0

    return v0
.end method

.method public L()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L()Lkg/j;

    return-object p0
.end method

.method public L1()S
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L1()S

    move-result v0

    return v0
.end method

.method public L2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->L2(I)Lkg/j;

    return-object p0
.end method

.method public M(Lkg/j;)I
    .locals 0

    invoke-static {p0, p1}, Lkg/n;->b(Lkg/j;Lkg/j;)I

    move-result p1

    return p1
.end method

.method public M1()J
    .locals 4

    invoke-virtual {p0}, Lkg/r0;->E1()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public N()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->N()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public N1()I
    .locals 2

    invoke-virtual {p0}, Lkg/r0;->H1()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public O1()I
    .locals 2

    invoke-virtual {p0}, Lkg/r0;->J1()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public P0(I)S
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->P0(I)S

    move-result p1

    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    return p1
.end method

.method public P1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    return v0
.end method

.method public Q(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->Q(II)Lkg/j;

    move-result-object p1

    iget-object p2, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->Q0(I)S

    move-result p1

    return p1
.end method

.method public Q1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->Q1()I

    move-result v0

    return v0
.end method

.method public R0(I)S
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->R0(I)S

    move-result p1

    return p1
.end method

.method public R1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->R1(I)Lkg/j;

    return-object p0
.end method

.method public S0(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lkg/r0;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public S1()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->S1()Lkg/j;

    return-object p0
.end method

.method public T0(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lkg/r0;->F0(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public T1()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method public U1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->U1(I)Lkg/j;

    return-object p0
.end method

.method public V1()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->W1()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public X0(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkg/r0;->H0(I)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->X1(II)Lkg/j;

    return-object p0
.end method

.method public Y0(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkg/r0;->P0(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public a1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->a1()Z

    move-result v0

    return v0
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    return-object p0
.end method

.method public b1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v0

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/j;->b2(I[BII)Lkg/j;

    return-object p0
.end method

.method public c0()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->c0()Lkg/j;

    return-object p0
.end method

.method public c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lkg/r0;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public d1(IIB)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->d1(IIB)I

    move-result p1

    return p1
.end method

.method public d2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->d2(II)Lkg/j;

    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/r0;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p2}, Lkg/n;->J(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lkg/j;->e2(II)Lkg/j;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkg/j;

    invoke-static {p0, p1}, Lkg/n;->o(Lkg/j;Lkg/j;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f0()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->f0()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method final f1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->f1()Z

    move-result v0

    return v0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->f2(II)Lkg/j;

    return-object p0
.end method

.method public g1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->g1()Z

    move-result v0

    return v0
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p2, p3}, Lkg/n;->K(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->g2(IJ)Lkg/j;

    return-object p0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lkg/n;->J(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/n;->K(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->h1()Z

    move-result v0

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-static {p2}, Lkg/n;->L(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lkg/j;->h2(II)Lkg/j;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->i1()Z

    move-result v0

    return v0
.end method

.method public i2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    int-to-short p2, p2

    invoke-static {p2}, Lkg/n;->M(S)S

    move-result p2

    invoke-virtual {v0, p1, p2}, Lkg/j;->i2(II)Lkg/j;

    return-object p0
.end method

.method public j1()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->j1()Z

    move-result v0

    return v0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lkg/j;->j2(II)Lkg/j;

    return-object p0
.end method

.method public k1(I)Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->k1(I)Z

    move-result p1

    return p1
.end method

.method public k2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->k2(II)Lkg/j;

    return-object p0
.end method

.method public l1()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->l1()Lkg/j;

    return-object p0
.end method

.method public l2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->l2(I)Lkg/j;

    return-object p0
.end method

.method public m0(IZ)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->m0(IZ)I

    move-result p1

    return p1
.end method

.method public m1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->m1()I

    move-result v0

    return v0
.end method

.method public m2()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->m2()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->n0(I)Lkg/j;

    return-object p0
.end method

.method public n1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->n1()I

    move-result v0

    return v0
.end method

.method public n2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->n2(II)Lkg/j;

    move-result-object p1

    iget-object p2, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public o1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->o1()I

    move-result v0

    return v0
.end method

.method public o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->o2(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->p0(Lio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public p1()J
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v0

    return-wide v0
.end method

.method public p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q0()Z
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q0()Z

    move-result v0

    return v0
.end method

.method public q1()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q1()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public q2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q2()Lkg/j;

    return-object p0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public r2(Ljava/lang/Object;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/r0;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public s1()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->s1()I

    move-result v0

    return v0
.end method

.method public s2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    return-object v0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, v0, v1

    iget-object v3, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public t2()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->t2()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapped("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/r0;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3
    aget-object v0, p1, p2

    iget-object v1, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public u2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->u2(I)Lkg/j;

    return-object p0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->v2(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->w0(ILjava/io/OutputStream;I)Lkg/j;

    return-object p0
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    const-string v0, "endianness"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkg/r0;->b:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object p1, p0, Lkg/r0;->a:Lkg/j;

    return-object p1
.end method

.method public w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public x1()B
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->x1()B

    move-result v0

    return v0
.end method

.method public x2(Lkg/j;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    return-object p0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->y()[B

    move-result-object v0

    return-object v0
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    return-object p0
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->y1(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public y2(Lkg/j;I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    return-object p0
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->z()I

    move-result v0

    return v0
.end method

.method public z1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->z1(I)Lkg/j;

    move-result-object p1

    invoke-virtual {p0}, Lkg/r0;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public z2(Lkg/j;II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/r0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    return-object p0
.end method
