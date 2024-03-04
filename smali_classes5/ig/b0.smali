.class Lig/b0;
.super Lio/grpc/internal/c;
.source "SourceFile"


# instance fields
.field private final a:Lkg/j;

.field private b:Z


# direct methods
.method constructor <init>(Lkg/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/internal/c;-><init>()V

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lig/b0;->a:Lkg/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic G(I)Lio/grpc/internal/v1;
    .locals 0

    invoke-virtual {p0, p1}, Lig/b0;->b(I)Lig/b0;

    move-result-object p1

    return-object p1
.end method

.method public a1([BII)V
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->D1([BII)Lkg/j;

    return-void
.end method

.method public b(I)Lig/b0;
    .locals 2

    new-instance v0, Lig/b0;

    iget-object v1, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v1, p1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lig/b0;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lig/b0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig/b0;->b:Z

    .line 3
    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_0
    return-void
.end method

.method public k1()V
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->l1()Lkg/j;

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L1()S

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->S1()Lkg/j;

    return-void
.end method

.method public skipBytes(I)V
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->l2(I)Lkg/j;

    return-void
.end method

.method public v0(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->B1(Ljava/nio/ByteBuffer;)Lkg/j;

    return-void
.end method

.method public x1(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lig/b0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2}, Lkg/j;->A1(Ljava/io/OutputStream;I)Lkg/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
