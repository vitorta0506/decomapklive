.class final Lkg/h;
.super Lkg/o0;
.source "SourceFile"


# static fields
.field private static final d:Z

.field private static final e:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lkg/h;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lkg/h;->e:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "io.grpc.netty.shaded.io.netty.leakDetection.acquireAndReleaseOnly"

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lkg/h;->d:Z

    .line 3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-D{}: {}"

    invoke-interface {v0, v3, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    const-class v0, Lkg/h;

    const-string v1, "touch"

    const-string v2, "recordLeakNonRefCountingOperation"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/o0;-><init>(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    return-void
.end method

.method constructor <init>(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lkg/j;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lkg/o0;-><init>(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    return-void
.end method

.method static T2(Lio/grpc/netty/shaded/io/netty/util/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lkg/h;->d:Z

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A0(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lkg/f1;->A0(ILkg/j;II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public A1(Ljava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->A1(Ljava/io/OutputStream;I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public A2([B)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->A2([B)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public B()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/o0;->B()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public B1(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->B1(Ljava/nio/ByteBuffer;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public B2([BII)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->B2([BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C0(I[B)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->C0(I[B)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C1([B)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->C1([B)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public C2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->C2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public D1([BII)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->D1([BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public E0(I[BII)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lkg/f1;->E0(I[BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public E1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->E1()I

    move-result v0

    return v0
.end method

.method public E2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->E2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public F0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->F0(I)I

    move-result p1

    return p1
.end method

.method public F1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->F1()I

    move-result v0

    return v0
.end method

.method public F2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->F2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public G0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->G0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public G1()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->G1()J

    move-result-wide v0

    return-wide v0
.end method

.method public G2(J)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->G2(J)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public H0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->H0(I)I

    move-result p1

    return p1
.end method

.method public H1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->H1()I

    move-result v0

    return v0
.end method

.method public H2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->H2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public I(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->I(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public I1(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/o0;->I1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public I2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->I2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public J1()S
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->J1()S

    move-result v0

    return v0
.end method

.method public J2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->J2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K1(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/o0;->K1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public L1()S
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->L1()S

    move-result v0

    return v0
.end method

.method public M1()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->M1()J

    move-result-wide v0

    return-wide v0
.end method

.method public N()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->N()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public N1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->N1()I

    move-result v0

    return v0
.end method

.method public O1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->O1()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic O2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lkg/h;->S2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/h;

    move-result-object p1

    return-object p1
.end method

.method public P0(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->P0(I)S

    move-result p1

    return p1
.end method

.method public Q(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->Q(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Q0(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->Q0(I)S

    move-result p1

    return p1
.end method

.method public R0(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->R0(I)S

    move-result p1

    return p1
.end method

.method public S0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->S0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected S2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lkg/j;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)",
            "Lkg/h;"
        }
    .end annotation

    new-instance v0, Lkg/h;

    invoke-direct {v0, p1, p2, p3}, Lkg/h;-><init>(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    return-object v0
.end method

.method public T0(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->T0(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public T1()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 2
    invoke-super {p0}, Lkg/f1;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public U1(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->U1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public V1()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/o0;->V1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/o0;->W1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public X0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->X0(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->X1(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public Y0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->Y0(I)I

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

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->Y1(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public a2(ILkg/j;II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lkg/f1;->a2(ILkg/j;II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public b2(I[BII)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lkg/f1;->b2(I[BII)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public c0()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->c0()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result p1

    return p1
.end method

.method public d1(IIB)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->d1(IIB)I

    move-result p1

    return p1
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->e2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public f0()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/o0;->f0()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public f2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->f2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public g2(IJ)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->g2(IJ)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->h2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public i2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->i2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public j2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->j2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public k2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->k2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public l2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->l2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public m0(IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->m0(IZ)I

    move-result p1

    return p1
.end method

.method public m2()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/o0;->m2()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public n0(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->n0(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public n2(II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/o0;->n2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->o0(IILio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->o2(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->p0(Lio/grpc/netty/shaded/io/netty/util/g;)I

    move-result p1

    return p1
.end method

.method public p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q1()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->q1()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public q2()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    return-object p0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public r2(Ljava/lang/Object;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/v;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 2
    invoke-super {p0}, Lkg/o0;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/v;->c()V

    .line 4
    invoke-super {p0, p1}, Lkg/o0;->release(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/h;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public s1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->s1()I

    move-result v0

    return v0
.end method

.method public t1()[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/h;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->u0(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public u2(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->u2(I)Lkg/j;

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
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->v0(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->v2(Ljava/nio/channels/ScatteringByteChannel;I)I

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

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->w0(ILjava/io/OutputStream;I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/o0;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w2(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public x1()B
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0}, Lkg/f1;->x1()B

    move-result v0

    return v0
.end method

.method public x2(Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->x2(Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public y0(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

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

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->y1(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public y2(Lkg/j;I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2}, Lkg/f1;->y2(Lkg/j;I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public z1(I)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1}, Lkg/f1;->z1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public z2(Lkg/j;II)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-static {v0}, Lkg/h;->T2(Lio/grpc/netty/shaded/io/netty/util/v;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lkg/f1;->z2(Lkg/j;II)Lkg/j;

    move-result-object p1

    return-object p1
.end method
