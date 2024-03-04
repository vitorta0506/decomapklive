.class public Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    const-string v1, "a"

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fd"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 3
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    return-void
.end method

.method static c(I)I
    .locals 0

    or-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private static native close(I)I
.end method

.method static e(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static f(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static h(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static j(I)I
    .locals 0

    or-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static native read(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native readAddress(IJII)I
.end method

.method private static native write(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native writeAddress(IJII)I
.end method

.method private static native writev(I[Ljava/nio/ByteBuffer;IIJ)J
.end method

.method private static native writevAddresses(IJI)J
.end method


# virtual methods
.method final a(II)Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->close(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "close"

    .line 3
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->e(Ljava/lang/String;I)Lio/grpc/netty/shaded/io/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget p1, p1, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->e(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    return v0
.end method

.method protected i()Z
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a:I

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    or-int/lit8 v1, v0, 0x7

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public final k(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->read(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const-string p2, "read"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final l(JII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->readAddress(IJII)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const-string p2, "readAddress"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final m(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->write(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const-string p2, "write"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final n(JII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->writeAddress(IJII)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const-string p2, "writeAddress"

    .line 2
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final o([Ljava/nio/ByteBuffer;IIJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->writev(I[Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    const-string p1, "writev"

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public final p(JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-static {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->writevAddresses(IJI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    const-string p1, "writevAddresses"

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Errors;->c(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDescriptor{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
