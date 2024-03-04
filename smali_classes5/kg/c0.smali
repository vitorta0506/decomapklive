.class abstract Lkg/c0;
.super Lkg/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/e;"
    }
.end annotation


# instance fields
.field private final n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/c0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected o:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected p:J

.field protected q:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected r:I

.field protected s:I

.field t:I

.field u:Lkg/b0;

.field v:Ljava/nio/ByteBuffer;

.field private w:Lkg/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkg/c0;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "+",
            "Lkg/c0<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkg/e;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkg/c0;->n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method

.method private J3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkg/c0;->o:Lkg/w;

    .line 2
    iget-object v0, p1, Lkg/w;->c:Ljava/lang/Object;

    iput-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p1, Lkg/w;->a:Lkg/v;

    iget-object p1, p1, Lkg/v;->n:Lkg/d0;

    iput-object p1, p0, Lkg/c0;->w:Lkg/k;

    .line 5
    iput-object p8, p0, Lkg/c0;->u:Lkg/b0;

    .line 6
    iput-wide p3, p0, Lkg/c0;->p:J

    .line 7
    iput p5, p0, Lkg/c0;->r:I

    .line 8
    iput p6, p0, Lkg/c0;->s:I

    .line 9
    iput p7, p0, Lkg/c0;->t:I

    return-void
.end method

.method private N3()V
    .locals 1

    iget-object v0, p0, Lkg/c0;->n:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final C3()V
    .locals 8

    .line 1
    iget-wide v3, p0, Lkg/c0;->p:J

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lkg/c0;->p:J

    const/4 v7, 0x0

    .line 3
    iput-object v7, p0, Lkg/c0;->q:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lkg/c0;->o:Lkg/w;

    iget-object v0, v1, Lkg/w;->a:Lkg/v;

    iget-object v2, p0, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    iget v5, p0, Lkg/c0;->t:I

    iget-object v6, p0, Lkg/c0;->u:Lkg/b0;

    invoke-virtual/range {v0 .. v6}, Lkg/v;->v(Lkg/w;Ljava/nio/ByteBuffer;JILkg/b0;)V

    .line 5
    iput-object v7, p0, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    .line 6
    iput-object v7, p0, Lkg/c0;->o:Lkg/w;

    .line 7
    invoke-direct {p0}, Lkg/c0;->N3()V

    :cond_0
    return-void
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lkg/c0;->s:I

    return v0
.end method

.method final F3(IIZ)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lkg/c0;->q:Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lkg/c0;->M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkg/c0;->L3()Ljava/nio/ByteBuffer;

    move-result-object p3

    :goto_0
    add-int/2addr p2, p1

    .line 3
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p3
.end method

.method G3(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected final H3(I)I
    .locals 1

    iget v0, p0, Lkg/c0;->r:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final I(I)Lkg/j;
    .locals 3

    .line 1
    iget v0, p0, Lkg/c0;->s:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkg/a;->p3()V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/a;->i3(I)V

    .line 4
    iget-object v0, p0, Lkg/c0;->o:Lkg/w;

    iget-boolean v1, v0, Lkg/w;->d:Z

    if-nez v1, :cond_3

    .line 5
    iget v1, p0, Lkg/c0;->s:I

    if-le p1, v1, :cond_1

    .line 6
    iget v1, p0, Lkg/c0;->t:I

    if-gt p1, v1, :cond_3

    .line 7
    iput p1, p0, Lkg/c0;->s:I

    return-object p0

    .line 8
    :cond_1
    iget v1, p0, Lkg/c0;->t:I

    ushr-int/lit8 v2, v1, 0x1

    if-le p1, v2, :cond_3

    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x10

    if-le p1, v1, :cond_3

    .line 9
    :cond_2
    iput p1, p0, Lkg/c0;->s:I

    .line 10
    invoke-virtual {p0, p1}, Lkg/a;->z3(I)V

    return-object p0

    .line 11
    :cond_3
    iget-object v0, v0, Lkg/w;->a:Lkg/v;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkg/v;->G(Lkg/c0;IZ)V

    return-object p0
.end method

.method I3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lkg/c0;->J3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V

    return-void
.end method

.method K3(Lkg/w;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lkg/c0;->J3(Lkg/w;Ljava/nio/ByteBuffer;JIIILkg/b0;)V

    return-void
.end method

.method protected final L3()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkg/c0;->M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lkg/c0;->v:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    return-object v0
.end method

.method protected abstract M3(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method final O3(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->t3(I)V

    .line 2
    invoke-virtual {p0}, Lkg/e;->E3()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lkg/a;->y3(II)V

    .line 4
    invoke-virtual {p0}, Lkg/a;->o3()V

    return-void
.end method

.method public final P()Lkg/k;
    .locals 1

    iget-object v0, p0, Lkg/c0;->w:Lkg/k;

    return-object v0
.end method

.method public final V1()Lkg/j;
    .locals 2

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v1

    invoke-static {p0, p0, v0, v1}, Lkg/g0;->J3(Lkg/a;Lkg/j;II)Lkg/g0;

    move-result-object v0

    return-object v0
.end method

.method public final W1()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lkg/c0;->v3(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public final Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lkg/c0;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public final e1(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final g1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n1()I
    .locals 2

    iget v0, p0, Lkg/c0;->t:I

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lkg/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final r1(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/c0;->G3(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final s1()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final s2()Lkg/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final u1(II)[Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lkg/c0;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-object v0
.end method

.method public final v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lkg/c0;->G3(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final v1()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public final v3(II)Lkg/j;
    .locals 0

    invoke-static {p0, p0, p1, p2}, Lkg/i0;->K3(Lkg/a;Lkg/j;II)Lkg/i0;

    move-result-object p1

    return-object p1
.end method

.method public final y1(Ljava/nio/channels/GatheringByteChannel;I)I
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

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lkg/c0;->F3(IIZ)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    iget p2, p0, Lkg/a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lkg/a;->a:I

    return p1
.end method
