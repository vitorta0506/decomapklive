.class public abstract Lio/grpc/internal/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v1;


# instance fields
.field private final a:Lio/grpc/internal/v1;


# direct methods
.method protected constructor <init>(Lio/grpc/internal/v1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "buf"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/v1;

    iput-object p1, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    return-void
.end method


# virtual methods
.method public G(I)Lio/grpc/internal/v1;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1}, Lio/grpc/internal/v1;->G(I)Lio/grpc/internal/v1;

    move-result-object p1

    return-object p1
.end method

.method public a1([BII)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/v1;->a1([BII)V

    return-void
.end method

.method public k1()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->k1()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->markSupported()Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->reset()V

    return-void
.end method

.method public skipBytes(I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1}, Lio/grpc/internal/v1;->skipBytes(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1}, Lio/grpc/internal/v1;->v0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public x1(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/p0;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/v1;->x1(Ljava/io/OutputStream;I)V

    return-void
.end method
