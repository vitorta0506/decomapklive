.class Lkg/p0;
.super Lkg/g1;
.source "SourceFile"


# instance fields
.field final z:Lio/grpc/netty/shaded/io/netty/util/v;
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

    const-class v0, Lkg/p0;

    return-void
.end method

.method constructor <init>(Lkg/o;Lio/grpc/netty/shaded/io/netty/util/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/o;",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkg/g1;-><init>(Lkg/o;)V

    const-string p1, "leak"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/v;

    iput-object p1, p0, Lkg/p0;->z:Lio/grpc/netty/shaded/io/netty/util/v;

    return-void
.end method

.method private a5(Lkg/j;)V
    .locals 1

    iget-object v0, p0, Lkg/p0;->z:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/v;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method private b5(Lkg/j;)Lkg/o0;
    .locals 2

    invoke-virtual {p0}, Lkg/g1;->s2()Lkg/j;

    move-result-object v0

    iget-object v1, p0, Lkg/p0;->z:Lio/grpc/netty/shaded/io/netty/util/v;

    invoke-virtual {p0, p1, v0, v1}, Lkg/p0;->c5(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public B()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/g1;->B()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public I1(I)Lkg/j;
    .locals 0

    invoke-super {p0, p1}, Lkg/g1;->I1(I)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method public K1(I)Lkg/j;
    .locals 0

    invoke-super {p0, p1}, Lkg/g1;->K1(I)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method public V1()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/g1;->V1()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/g1;->W1()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method protected c5(Lkg/j;Lkg/j;Lio/grpc/netty/shaded/io/netty/util/v;)Lkg/o0;
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

.method public f0()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/g1;->f0()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public m2()Lkg/j;
    .locals 1

    invoke-super {p0}, Lkg/g1;->m2()Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object v0

    return-object v0
.end method

.method public n2(II)Lkg/j;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/g1;->n2(II)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method public release()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/g1;->s2()Lkg/j;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lkg/g1;->release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lkg/p0;->a5(Lkg/j;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lkg/g1;->s2()Lkg/j;

    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Lkg/g1;->release(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lkg/p0;->a5(Lkg/j;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v3(II)Lkg/j;
    .locals 0

    invoke-super {p0, p1, p2}, Lkg/g1;->v3(II)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/g1;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lkg/g1;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lkg/p0;->b5(Lkg/j;)Lkg/o0;

    move-result-object p1

    return-object p1
.end method
