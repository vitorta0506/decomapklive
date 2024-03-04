.class final Lkg/b1;
.super Lkg/f1;
.source "SourceFile"


# instance fields
.field private b:Lkg/r0;


# direct methods
.method constructor <init>(Lkg/j;)V
    .locals 1

    instance-of v0, p1, Lkg/b1;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkg/j;->s2()Lkg/j;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lkg/f1;-><init>(Lkg/j;)V

    return-void
.end method


# virtual methods
.method public B()Lkg/j;
    .locals 2

    iget-object v0, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/b1;

    iget-object v1, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->B()Lkg/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lkg/b1;-><init>(Lkg/j;)V

    :goto_0
    return-object v0
.end method

.method public I1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/b1;->K1(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public K1(I)Lkg/j;
    .locals 2

    new-instance v0, Lkg/b1;

    iget-object v1, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/j;->K1(I)Lkg/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lkg/b1;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public T1()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public U1(I)Lkg/j;
    .locals 0

    return-object p0
.end method

.method public V1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/b1;->f0()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/b1;->m2()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public f0()Lkg/j;
    .locals 2

    new-instance v0, Lkg/b1;

    iget-object v1, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->f0()Lkg/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lkg/b1;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public m2()Lkg/j;
    .locals 2

    new-instance v0, Lkg/b1;

    iget-object v1, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->m2()Lkg/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lkg/b1;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public n2(II)Lkg/j;
    .locals 2

    new-instance v0, Lkg/b1;

    iget-object v1, p0, Lkg/f1;->a:Lkg/j;

    invoke-virtual {v1, p1, p2}, Lkg/j;->n2(II)Lkg/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lkg/b1;-><init>(Lkg/j;)V

    return-object v0
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

    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/b1;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/b1;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public w1(Ljava/nio/ByteOrder;)Lkg/j;
    .locals 1

    const-string v0, "endianness"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lkg/f1;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object p1, p0, Lkg/b1;->b:Lkg/r0;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lkg/r0;

    invoke-direct {p1, p0}, Lkg/r0;-><init>(Lkg/j;)V

    iput-object p1, p0, Lkg/b1;->b:Lkg/r0;

    :cond_1
    return-object p1
.end method
