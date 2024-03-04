.class final Lkg/k0;
.super Lkg/h0;
.source "SourceFile"


# static fields
.field private static final y:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/k0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/k0$a;

    invoke-direct {v0}, Lkg/k0$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/k0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/k0;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lkg/h0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;ILkg/k0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkg/k0;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;I)V

    return-void
.end method

.method static R3(I)Lkg/k0;
    .locals 1

    .line 1
    sget-object v0, Lkg/k0;->y:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/k0;

    .line 2
    invoke-virtual {v0, p0}, Lkg/c0;->O3(I)V

    return-object v0
.end method


# virtual methods
.method public J2(I)Lkg/j;
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lkg/a;->n0(I)Lkg/j;

    .line 3
    iget v0, p0, Lkg/a;->b:I

    .line 4
    iget-object v1, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, v0}, Lkg/c0;->H3(I)I

    move-result v2

    invoke-static {v1, v2, p1}, Lkg/c1;->Q([BII)V

    add-int/2addr v0, p1

    .line 5
    iput v0, p0, Lkg/a;->b:I

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lkg/a;->J2(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected M2(I)B
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->c([BI)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->j([BI)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->l([BI)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->n([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected Q2(I)J
    .locals 2

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->p([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->r([BI)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->t([BI)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1}, Lkg/c1;->v([BI)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->y([BII)V

    return-void
.end method

.method protected V2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->D([BII)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->F([BII)V

    return-void
.end method

.method protected X2(IJ)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Lkg/c1;->H([BIJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->J([BII)V

    return-void
.end method

.method protected Z2(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->L([BII)V

    return-void
.end method

.method protected a3(II)V
    .locals 1

    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->N([BII)V

    return-void
.end method

.method public k2(II)Lkg/j;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 3
    iget-object v0, p0, Lkg/c0;->q:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lkg/c0;->H3(I)I

    move-result p1

    invoke-static {v0, p1, p2}, Lkg/c1;->Q([BII)V

    return-object p0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lkg/a;->k2(II)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected u3()Lkg/r0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lkg/e1;

    invoke-direct {v0, p0}, Lkg/e1;-><init>(Lkg/a;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lkg/a;->u3()Lkg/r0;

    move-result-object v0

    return-object v0
.end method
