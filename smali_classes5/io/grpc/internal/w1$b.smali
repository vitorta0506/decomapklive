.class final Lio/grpc/internal/w1$b;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lio/grpc/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lio/grpc/internal/v1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/v1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "buffer"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/v1;

    iput-object p1, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget-object p1, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {p1}, Lio/grpc/internal/v1;->k1()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/v1;->a1([BII)V

    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {v0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    .line 2
    iget-object p1, p0, Lio/grpc/internal/w1$b;->a:Lio/grpc/internal/v1;

    invoke-interface {p1, p2}, Lio/grpc/internal/v1;->skipBytes(I)V

    int-to-long p1, p2

    return-wide p1
.end method
