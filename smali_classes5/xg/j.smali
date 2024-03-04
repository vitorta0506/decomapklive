.class Lxg/j;
.super Lio/grpc/internal/c;
.source "SourceFile"


# instance fields
.field private final a:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/internal/c;-><init>()V

    .line 2
    iput-object p1, p0, Lxg/j;->a:Lokio/Buffer;

    return-void
.end method

.method private c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public G(I)Lio/grpc/internal/v1;
    .locals 4

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 2
    iget-object v1, p0, Lxg/j;->a:Lokio/Buffer;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 3
    new-instance p1, Lxg/j;

    invoke-direct {p1, v0}, Lxg/j;-><init>(Lokio/Buffer;)V

    return-object p1
.end method

.method public a1([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EOF trying to read "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-void
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public readUnsignedByte()I
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lxg/j;->c()V

    .line 2
    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipBytes(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v0(Ljava/nio/ByteBuffer;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public x1(Ljava/io/OutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lxg/j;->a:Lokio/Buffer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    return-void
.end method
