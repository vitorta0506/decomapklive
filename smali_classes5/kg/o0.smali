.class Lkg/o0;
.super Lkg/f1;
.source "SourceFile"


# instance fields
.field private final b:Lkg/j;

.field final c:Lio/grpc/netty/shaded/io/netty/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkg/o0;

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

    .line 4
    invoke-direct {p0, p1, p1, p2}, Lkg/o0;-><init>(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

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

    .line 1
    invoke-direct {p0, p1}, Lkg/f1;-><init>(Lkg/j;)V

    const-string p1, "trackedByteBuf"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lkg/o0;->b:Lkg/j;

    const-string p1, "leak"

    .line 3
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/v;

    iput-object p1, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    return-void
.end method

.method private M2()V
    .locals 2

    iget-object v0, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    iget-object v1, p0, Lkg/o0;->b:Lkg/j;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/v;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method private N2(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)",
            "Lkg/o0;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, Lkg/o0;->O2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method private P2(Lkg/j;)Lkg/o0;
    .locals 2

    iget-object v0, p0, Lkg/o0;->b:Lkg/j;

    iget-object v1, p0, Lkg/o0;->c:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-virtual {p0, p1, v0, v1}, Lkg/o0;->O2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method private static Q2(Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    instance-of v0, p0, Lkg/r0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lkg/r0;

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method private R2(Lkg/j;)Lkg/j;
    .locals 2

    .line 1
    invoke-static {p1}, Lkg/o0;->Q2(Lkg/j;)Lkg/j;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkg/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lkg/d;

    invoke-virtual {v0, p0}, Lkg/d;->H3(Lkg/j;)V

    .line 4
    sget-object v0, Lkg/a;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lkg/o0;->N2(Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public B()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/f1;->B()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public I1(I)Lkg/j;
    .locals 0

    invoke-super {p0, p1}, Lkg/f1;->I1(I)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/o0;->R2(Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K1(I)Lkg/j;
    .locals 0

    invoke-super {p0, p1}, Lkg/f1;->K1(I)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method protected O2(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lkg/j;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)",
            "Lkg/o0;"
        }
    .end annotation

    new-instance v0, Lkg/o0;

    invoke-direct {v0, p1, p2, p3}, Lkg/o0;-><init>(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)V

    return-object v0
.end method

.method public V1()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/f1;->V1()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o0;->R2(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/f1;->W1()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o0;->R2(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public f0()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/f1;->f0()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public m2()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/f1;->m2()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public n2(II)Lkg/j;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/f1;->n2(II)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method public q2()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    return-object p0
.end method

.method public release()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkg/f1;->release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkg/o0;->M2()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lkg/f1;->release(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lkg/o0;->M2()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/o0;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/f1;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lkg/f1;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/o0;->P2(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method
