.class public Lkg/m;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final a:Lkg/j;

.field private final b:I

.field private final c:I

.field private d:Z

.field private final e:Z

.field private f:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lkg/j;IZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "buffer"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_0
    const-string v0, "length"

    .line 5
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 6
    :cond_1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    if-le p2, v0, :cond_3

    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 8
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many bytes to be read - Needs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maximum is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 10
    :cond_3
    iput-boolean p3, p0, Lkg/m;->e:Z

    .line 11
    iput-object p1, p0, Lkg/m;->a:Lkg/j;

    .line 12
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result p3

    iput p3, p0, Lkg/m;->b:I

    add-int/2addr p3, p2

    .line 13
    iput p3, p0, Lkg/m;->c:I

    .line 14
    invoke-virtual {p1}, Lkg/j;->l1()Lkg/j;

    return-void
.end method

.method public constructor <init>(Lkg/j;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lkg/m;-><init>(Lkg/j;IZ)V

    return-void
.end method

.method private a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize is too long! Length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but maximum is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "fieldSize cannot be a negative number"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lkg/m;->c:I

    iget-object v1, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->Q1()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lkg/m;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lkg/m;->d:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lkg/m;->d:Z

    .line 4
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lkg/m;->e:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lkg/m;->d:Z

    if-nez v2, :cond_1

    .line 6
    iput-boolean v0, p0, Lkg/m;->d:Z

    .line 7
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 8
    :cond_1
    throw v1
.end method

.method public mark(I)V
    .locals 0

    iget-object p1, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {p1}, Lkg/j;->l1()Lkg/j;

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->x1()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

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
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->D1([BII)Lkg/j;

    return p3
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkg/m;->a(I)V

    .line 2
    invoke-virtual {p0}, Lkg/m;->read()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->x1()B

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/m;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/m;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/m;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lkg/m;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p3}, Lkg/m;->a(I)V

    .line 3
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->D1([BII)Lkg/j;

    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lkg/m;->a(I)V

    .line 2
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->E1()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    :cond_1
    iget-object v1, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v1}, Lkg/j;->L1()S

    move-result v1

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_3

    .line 5
    iget-object v2, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v2, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    .line 8
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {v0, v1}, Lkg/j;->R0(I)S

    move-result v0

    int-to-char v0, v0

    if-ne v0, v2, :cond_4

    .line 9
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkg/j;->l2(I)Lkg/j;

    .line 10
    :cond_4
    :goto_0
    iget-object v0, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lkg/m;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lkg/m;->a(I)V

    .line 2
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->G1()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lkg/m;->a(I)V

    .line 2
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->J1()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/m;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/m;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->S1()Lkg/j;

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1}, Lkg/m;->skipBytes(I)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1

    :cond_0
    long-to-int p2, p1

    .line 2
    invoke-virtual {p0, p2}, Lkg/m;->skipBytes(I)I

    move-result p1

    goto :goto_0
.end method

.method public skipBytes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/m;->available()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Lkg/m;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->l2(I)Lkg/j;

    return p1
.end method
