.class public Lkg/u0;
.super Lkg/e;
.source "SourceFile"


# instance fields
.field private final n:Lkg/k;

.field o:Ljava/nio/ByteBuffer;

.field private p:Ljava/nio/ByteBuffer;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Lkg/k;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lkg/e;-><init>(I)V

    const-string v0, "alloc"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "initialCapacity"

    .line 3
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v0, "maxCapacity"

    .line 4
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    .line 5
    iput-object p1, p0, Lkg/u0;->n:Lkg/k;

    .line 6
    invoke-virtual {p0, p2}, Lkg/u0;->F3(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkg/u0;->M3(Ljava/nio/ByteBuffer;Z)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "initialCapacity(%d) > maxCapacity(%d)"

    .line 9
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lkg/k;Ljava/nio/ByteBuffer;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lkg/u0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;IZZ)V

    return-void
.end method

.method constructor <init>(Lkg/k;Ljava/nio/ByteBuffer;IZZ)V
    .locals 3

    .line 11
    invoke-direct {p0, p3}, Lkg/e;-><init>(I)V

    const-string v0, "alloc"

    .line 12
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "initialBuffer"

    .line 13
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p3, :cond_1

    .line 17
    iput-object p1, p0, Lkg/u0;->n:Lkg/k;

    xor-int/lit8 p1, p4, 0x1

    .line 18
    iput-boolean p1, p0, Lkg/u0;->r:Z

    if-eqz p5, :cond_0

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lkg/u0;->M3(Ljava/nio/ByteBuffer;Z)V

    .line 20
    invoke-virtual {p0, v0}, Lkg/a;->L2(I)Lkg/j;

    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "initialCapacity(%d) > maxCapacity(%d)"

    .line 23
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialBuffer is a read-only buffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "initialBuffer is not a direct buffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private H3(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p4, :cond_1

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_1
    iget-object p4, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 4
    :goto_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-interface {p2, p4}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private L3()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/u0;->p:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lkg/u0;->p:Ljava/nio/ByteBuffer;

    :cond_0
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

    invoke-virtual {p0, p1, v0, p2, p4}, Lkg/u0;->E0(I[BII)Lkg/j;

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
    invoke-virtual {p0, p1, v0}, Lkg/u0;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

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

    invoke-virtual {p0, v0, p1, p2, v1}, Lkg/u0;->I3(ILjava/io/OutputStream;IZ)V

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

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lkg/u0;->J3(ILjava/nio/ByteBuffer;Z)V

    .line 4
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method protected C3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    .line 3
    iget-boolean v1, p0, Lkg/u0;->r:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lkg/u0;->G3(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public D1([BII)Lkg/j;
    .locals 6

    .line 1
    invoke-virtual {p0, p3}, Lkg/a;->l3(I)V

    .line 2
    iget v1, p0, Lkg/a;->a:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lkg/u0;->K3(I[BIIZ)V

    .line 3
    iget p1, p0, Lkg/a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lkg/a;->a:I

    return-object p0
.end method

.method public E0(I[BII)Lkg/j;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lkg/u0;->K3(I[BIIZ)V

    return-object p0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lkg/u0;->q:I

    return v0
.end method

.method protected F3(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected G3(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public I(I)Lkg/j;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->i3(I)V

    .line 2
    iget v0, p0, Lkg/u0;->q:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lkg/a;->z3(I)V

    move v0, p1

    .line 4
    :goto_0
    iget-object v1, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p0, p1}, Lkg/u0;->F3(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lkg/u0;->M3(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method I3(ILjava/io/OutputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkg/u0;->P()Lkg/k;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p4

    :goto_0
    invoke-static {v0, p4, p1, p3, p2}, Lkg/n;->D(Lkg/k;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V

    return-void
.end method

.method J3(ILjava/nio/ByteBuffer;Z)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkg/a;->f3(II)V

    if-eqz p3, :cond_0

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 4
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method K3(I[BIIZ)V
    .locals 1

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->d3(IIII)V

    if-eqz p5, :cond_0

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p5

    goto :goto_0

    .line 3
    :cond_0
    iget-object p5, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p5

    .line 4
    :goto_0
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p4

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p5, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method M3(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    .line 2
    iget-boolean v0, p0, Lkg/u0;->r:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lkg/u0;->r:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lkg/u0;->G3(Ljava/nio/ByteBuffer;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lkg/u0;->p:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iput p1, p0, Lkg/u0;->q:I

    return-void
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lkg/n;->J(I)I

    move-result p1

    return p1
.end method

.method public P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/u0;->n:Lkg/k;

    return-object v0
.end method

.method public P0(I)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/u0;->R2(I)S

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(II)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p0}, Lkg/u0;->P()Lkg/k;

    move-result-object p1

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {p1, p2, v1}, Lkg/k;->i(II)Lkg/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lkg/j;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    move-result-object p1

    return-object p1

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to read - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkg/n;->K(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    invoke-static {p1}, Lkg/n;->M(S)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lkg/u0;->u0(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lkg/u0;->u0(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lkg/u0;->u0(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Lkg/n;->J(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public X0(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/u0;->T2(I)I

    move-result p1

    return p1
.end method

.method public X1(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/u0;->U2(II)V

    return-object p0
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p3

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    :try_start_0
    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method protected Y2(II)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, p1, v0}, Lkg/u0;->X1(II)Lkg/j;

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lkg/u0;->X1(II)Lkg/j;

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lkg/u0;->X1(II)Lkg/j;

    return-void
.end method

.method public Z1(ILjava/nio/ByteBuffer;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

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
    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p2, p3, p4}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object v0, p2, p4

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 5
    invoke-virtual {p0, p1, v0}, Lkg/u0;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    add-int/2addr p1, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, p3, p0, p1, p4}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    :cond_1
    return-object p0
.end method

.method protected a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    invoke-static {p2}, Lkg/n;->M(S)S

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public b1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b2(I[BII)Lkg/j;
    .locals 2

    .line 1
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lkg/a;->n3(IIII)V

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p1, p4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    invoke-direct {p0}, Lkg/u0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public e2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/u0;->V2(II)V

    return-object p0
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g2(IJ)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lkg/u0;->X2(IJ)V

    return-object p0
.end method

.method public getInt(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/u0;->N2(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/u0;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/u0;->Y2(II)V

    return-object p0
.end method

.method public i2(II)Lkg/j;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/u0;->Z2(II)V

    return-object p0
.end method

.method public p1()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public s1()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s2()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0(I)B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    invoke-virtual {p0, p1}, Lkg/u0;->M2(I)B

    move-result p1

    return p1
.end method

.method public u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lkg/u0;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkg/u0;->H3(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    return p1
.end method

.method public v1()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public w0(ILjava/io/OutputStream;I)Lkg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lkg/u0;->I3(ILjava/io/OutputStream;IZ)V

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lkg/u0;->J3(ILjava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method public y1(Ljava/nio/channels/GatheringByteChannel;I)I
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

    invoke-direct {p0, v0, p1, p2, v1}, Lkg/u0;->H3(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->a:I

    return p1
.end method

.method public z()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
