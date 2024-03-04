.class Lkg/g1;
.super Lkg/o;
.source "SourceFile"


# instance fields
.field private final y:Lkg/o;


# direct methods
.method constructor <init>(Lkg/o;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkg/o;->P()Lkg/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o;-><init>(Lkg/k;)V

    .line 2
    iput-object p1, p0, Lkg/g1;->y:Lkg/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic A0(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/g1;->d4(ILkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkg/g1;->l4(Ljava/io/OutputStream;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic A2([B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->R4([B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final A4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->A4(II)Lkg/o;

    return-object p0
.end method

.method public B()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->B()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->m4(Ljava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic B2([BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/g1;->S4([BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public B4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->B4(II)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic C0(I[B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->e4(I[B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C1([B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->n4([B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->T4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final C3()V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->C3()V

    return-void
.end method

.method public C4(IJ)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->C4(IJ)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic D1([BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/g1;->o4([BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public D4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->D4(II)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic E0(I[BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/g1;->f4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public E1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->E1()I

    move-result v0

    return v0
.end method

.method public bridge synthetic E2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->U4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public E4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->E4(II)Lkg/o;

    return-object p0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->F()I

    move-result v0

    return v0
.end method

.method public F0(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->F0(I)I

    move-result p1

    return p1
.end method

.method public F1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->F1()I

    move-result v0

    return v0
.end method

.method public F2(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->F2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public F4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->F4(II)Lkg/o;

    return-object p0
.end method

.method public G0(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->G0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public G1()J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->G1()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic G2(J)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->V4(J)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public H0(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->H0(I)I

    move-result p1

    return p1
.end method

.method public H1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->H1()I

    move-result v0

    return v0
.end method

.method public bridge synthetic H2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->W4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public H3(ZILkg/j;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->H3(ZILkg/j;)Lkg/o;

    return-object p0
.end method

.method public H4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->H4(I)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic I(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->M3(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public I1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->I1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->X4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public I3(ZLkg/j;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->I3(ZLkg/j;)Lkg/o;

    return-object p0
.end method

.method public J1()S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->J1()S

    move-result v0

    return v0
.end method

.method public bridge synthetic J2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->Y4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public J4()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->J4()Lkg/o;

    return-object p0
.end method

.method public K1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->K1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public final K2()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->K2()I

    move-result v0

    return v0
.end method

.method public K3(ZLkg/j;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->K3(ZLkg/j;)Lkg/o;

    return-object p0
.end method

.method public K4(Ljava/lang/Object;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->K4(Ljava/lang/Object;)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic L()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->P3()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public L1()S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->L1()S

    move-result v0

    return v0
.end method

.method public bridge synthetic L2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->Z4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lkg/j;)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public M1()J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->M1()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->M2(I)B

    move-result p1

    return p1
.end method

.method public M3(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->M3(I)Lkg/o;

    return-object p0
.end method

.method public M4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->M4(I)Lkg/o;

    return-object p0
.end method

.method public N()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->N()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public N1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->N1()I

    move-result v0

    return v0
.end method

.method protected final N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->N2(I)I

    move-result p1

    return p1
.end method

.method public N4(Ljava/nio/ByteBuffer;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->N4(Ljava/nio/ByteBuffer;)Lkg/o;

    return-object p0
.end method

.method public O1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->O1()I

    move-result v0

    return v0
.end method

.method protected final O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->O2(I)I

    move-result p1

    return p1
.end method

.method public O4(Lkg/j;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->O4(Lkg/j;)Lkg/o;

    return-object p0
.end method

.method public final P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public P0(I)S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->P0(I)S

    move-result p1

    return p1
.end method

.method public final P1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->P1()I

    move-result v0

    return v0
.end method

.method protected final P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final P3()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->P3()Lkg/o;

    return-object p0
.end method

.method public P4(Lkg/j;I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->P4(Lkg/j;I)Lkg/o;

    return-object p0
.end method

.method public Q(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->Q(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->Q0(I)S

    move-result p1

    return p1
.end method

.method public final Q1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->Q1()I

    move-result v0

    return v0
.end method

.method protected final Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q4(Lkg/j;II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->Q4(Lkg/j;II)Lkg/o;

    return-object p0
.end method

.method public R0(I)S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->R0(I)S

    move-result p1

    return p1
.end method

.method public bridge synthetic R1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->p4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected final R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->R2(I)S

    move-result p1

    return p1
.end method

.method public R4([B)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->R4([B)Lkg/o;

    return-object p0
.end method

.method public S0(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->S0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic S1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->s4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method protected final S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->S2(I)S

    move-result p1

    return p1
.end method

.method public S4([BII)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->S4([BII)Lkg/o;

    return-object p0
.end method

.method public T0(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->T0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic T1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->t4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method protected final T2(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->T2(I)I

    move-result p1

    return p1
.end method

.method public T4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->T4(I)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic U1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->u4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected final U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->U2(II)V

    return-void
.end method

.method public U3()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->U3()Lkg/o;

    return-object p0
.end method

.method public U4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->U4(I)Lkg/o;

    return-object p0
.end method

.method public V1()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->V1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method protected final V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->V2(II)V

    return-void
.end method

.method public V3()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->V3()Lkg/o;

    return-object p0
.end method

.method public V4(J)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->V4(J)Lkg/o;

    return-object p0
.end method

.method public W1()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->W1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method protected final W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->W2(II)V

    return-void
.end method

.method public W4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->W4(I)Lkg/o;

    return-object p0
.end method

.method public X0(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->X0(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic X1(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->v4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected final X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->X2(IJ)V

    return-void
.end method

.method public X3(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->X3(I)Lkg/o;

    return-object p0
.end method

.method public X4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->X4(I)Lkg/o;

    return-object p0
.end method

.method public Y0(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->Y0(I)I

    move-result p1

    return p1
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method protected final Y2(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->Y2(II)V

    return-void
.end method

.method public Y4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->Y4(I)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->w4(ILjava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected final Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->Z2(II)V

    return-void
.end method

.method public final Z4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->Z4(I)Lkg/o;

    return-object p0
.end method

.method public final a1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->a1()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a2(ILkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/g1;->x4(ILkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected final a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->a3(II)V

    return-void
.end method

.method public final b1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->b1()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b2(I[BII)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/g1;->z4(I[BII)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public b4(ILjava/io/OutputStream;I)Lkg/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->b4(ILjava/io/OutputStream;I)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic c0()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->V3()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public c4(ILjava/nio/ByteBuffer;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->c4(ILjava/nio/ByteBuffer;)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lkg/g1;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public d1(IIB)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->d1(IIB)I

    move-result p1

    return p1
.end method

.method public bridge synthetic d2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->A4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public d4(ILkg/j;II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/o;->d4(ILkg/j;II)Lkg/o;

    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->B4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public e4(I[B)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->e4(I[B)Lkg/o;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f0()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->f0()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method final f1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->f1()Z

    move-result v0

    return v0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->f2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public f4(I[BII)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/o;->f4(I[BII)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic g2(IJ)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/g1;->C4(IJ)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final g4(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->g4(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->h1()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->D4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final h4()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->h4()Lkg/o;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->i1()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->E4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkg/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j1()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->j1()Z

    move-result v0

    return v0
.end method

.method public j2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->j2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public final k1(I)Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->k1(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic k2(II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->F4(II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final k4()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->k4()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->h4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->H4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public l4(Ljava/io/OutputStream;I)Lkg/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->l4(Ljava/io/OutputStream;I)Lkg/o;

    return-object p0
.end method

.method public m0(IZ)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->m0(IZ)I

    move-result p1

    return p1
.end method

.method public final m1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->m1()I

    move-result v0

    return v0
.end method

.method public m2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->m2()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public m4(Ljava/nio/ByteBuffer;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->m4(Ljava/nio/ByteBuffer;)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic n0(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->X3(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public n1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/j;->n1()I

    move-result v0

    return v0
.end method

.method public n2(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->n2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public n4([B)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->n4([B)Lkg/o;

    return-object p0
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public final o1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->o1()I

    move-result v0

    return v0
.end method

.method public o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->o2(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o4([BII)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->o4([BII)Lkg/o;

    return-object p0
.end method

.method public p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->p0(Lio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public final p1()J
    .locals 2

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->p1()J

    move-result-wide v0

    return-wide v0
.end method

.method public p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final p4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->p4(I)Lkg/o;

    return-object p0
.end method

.method public final q0()Z
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->q0()Z

    move-result v0

    return v0
.end method

.method public q1()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->q1()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q2()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->J4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->K4(Ljava/lang/Object;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public final refCnt()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/e;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/e;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/e;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/g1;->t4()Lkg/o;

    move-result-object v0

    return-object v0
.end method

.method public s1()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->s1()I

    move-result v0

    return v0
.end method

.method public final s2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    return-object v0
.end method

.method public final s4()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->s4()Lkg/o;

    return-object p0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final t2()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->t2()I

    move-result v0

    return v0
.end method

.method public t4()Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->t4()Lkg/o;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->K4(Ljava/lang/Object;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->M4(I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method protected u3()Lkg/r0;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->u3()Lkg/r0;

    move-result-object v0

    return-object v0
.end method

.method public u4(I)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/o;->u4(I)Lkg/o;

    return-object p0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3}, Lkg/o;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public final v1()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->v2(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public v3(II)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->v3(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public v4(II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->v4(II)Lkg/o;

    return-object p0
.end method

.method public bridge synthetic w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lkg/g1;->b4(ILjava/io/OutputStream;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->N4(Ljava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w3(I[B)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->y4(I[B)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public w4(ILjava/nio/ByteBuffer;)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->w4(ILjava/nio/ByteBuffer;)Lkg/o;

    return-object p0
.end method

.method public x1()B
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/a;->x1()B

    move-result v0

    return v0
.end method

.method public bridge synthetic x2(Lkg/j;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g1;->O4(Lkg/j;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public x4(ILkg/j;II)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/o;->x4(ILkg/j;II)Lkg/o;

    return-object p0
.end method

.method public final y()[B
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->y()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->c4(ILjava/nio/ByteBuffer;)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/a;->y1(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic y2(Lkg/j;I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/g1;->P4(Lkg/j;I)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public y4(I[B)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2}, Lkg/o;->y4(I[B)Lkg/o;

    return-object p0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0}, Lkg/o;->z()I

    move-result v0

    return v0
.end method

.method public z1(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1}, Lkg/a;->z1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z2(Lkg/j;II)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/g1;->Q4(Lkg/j;II)Lkg/o;

    move-result-object p1

    return-object p1
.end method

.method public z4(I[BII)Lkg/o;
    .locals 1

    iget-object v0, p0, Lkg/g1;->y:Lkg/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkg/o;->z4(I[BII)Lkg/o;

    return-object p0
.end method
